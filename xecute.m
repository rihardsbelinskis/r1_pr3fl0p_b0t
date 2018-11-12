%% Welcome to r1h4rd5_pr3fl0p_b0t (888 poker)
% A preflop online poker bot, which is analyzes holecards, from a given
% range and makes the decision whether to fold or raise. The bot makes
% preflop game much smoother.
%
% The bot is limited to:
% - Pacific Poker (888) software;
% - 6-max tables;
% - Bottom-right sitting position;
% - Maximized poker window(-s, if all are cascaded on top, and maximized);
% - Settings -> Game Settings -> Table layout -> Choose your cards' face: 3rd.

%% Update history:
% v1.0 - prototype version w/ TakeScreenshot, ViewHolecards, 
% NameOfHolecards and action_call, based on "AKo" range.
% v1.1 - updated range "AKo" = "KAo".
% v1.2 - continuous loop of play, w/ Sleep function.
% v1.3 - position detection enabled.
% v1.4 - all position ranges implemented.
% v1.5 - randomization of the sleep time b/w hands & hand counter created.
% v1.6 - waiting on my turn of action implemented (ViewAction).
% v1.7 - ViewPriorAction implemented. Prior action now visible.
% v1.8 - DoIHaveAHand implemented. Only acts when cards are dealt.
% v1.9 - false-positive heart & diamond card recognition fixed.

%% Upcoming updates
% Make new ranges, depending on ViewPriorAction
% Multi-tabling (recognizes the amount of tables played (1-6));
% Support different sites (at least 888 and PokerStars);

%% Initialization
clear all, close all, clc;
fprintf("\nr1h4rd5_pr3fl0p_b0t \nv1.9 activated.\n");
fprintf("----------------------------\n");

% Initialize counters
hand_count = 1;

% Load the card deck
card_deck = imread('C:\Users\Gebruiker\AppData\Roaming\pacificpoker\PokerEx\media\Decks\Deck2\deck5.png');

% Load misc. images & sounds
dealer_chip = imread('C:\Users\Gebruiker\AppData\Roaming\pacificpoker\Poker\media\Themes\Theme1001\dealer.png');
checkbtn = imread('C:\Users\Gebruiker\AppData\Roaming\pacificpoker\Poker\media\checkBtn.png');
sbstatus = imread('C:\Users\Gebruiker\AppData\Roaming\pacificpoker\Poker\media\statusBar_smBlind.png');
bbstatus = imread('C:\Users\Gebruiker\AppData\Roaming\pacificpoker\Poker\media\statusBar_bigBlind.png');
foldstatus = imread('C:\Users\Gebruiker\AppData\Roaming\pacificpoker\Poker\media\statusBar_fold.png');
checkcallstatus = imread('C:\Users\Gebruiker\AppData\Roaming\pacificpoker\Poker\media\statusBar_check_call.png');
betraisestatus = imread('C:\Users\Gebruiker\AppData\Roaming\pacificpoker\Poker\media\statusBar_bet_raise.png');
allinstatus = imread('C:\Users\Gebruiker\AppData\Roaming\pacificpoker\Poker\media\statusBar_allin.png');
warning_signal = 'C:\Users\Gebruiker\AppData\Roaming\pacificpoker\Poker\media\Sounds\TimerPing.wav';

%% Preflop
while true
    TakeScreenshot;
    [gotCards] = DoIHaveAHand(tableScreenshot);
    if gotCards == 1
        TakeScreenshot;
        HandCounter;
        [actionOnMe] = ViewAction(tableScreenshot, checkbtn);
        [position] = DeterminePosition(tableScreenshot, dealer_chip);
        [myPosition] = NameOfPosition(position);
        [holecard_coord_1, holecard_coord_2] = ViewHolecards(tableScreenshot, card_deck);
        [myHand] = NameOfHolecards(holecard_coord_1, holecard_coord_2);
        Sleep(1);

        % Re-check the screen
        TakeScreenshot;
        [priorAction] = ViewPriorAction(tableScreenshot, sbstatus, bbstatus, foldstatus, checkcallstatus, betraisestatus, allinstatus);
        [previous_line] = NameOfPriorAction(myPosition, priorAction);
        [isPlayable] = CheckPreflopRange(myHand, myPosition);
        if isPlayable == 1
            [y,Fs] = audioread(warning_signal);
            sound(y,Fs);
            fprintf("\nEnd of preflop action!\n");
            return;
        end
    else
        continue;
    end
    seconds = randi([5,10]);
    Sleep(seconds);
    fprintf("\n--------------------------\n");
    fprintf('Action time: %d sec.\n',seconds);
    fprintf("----------------------------\n");
end

%% Flop
% TakeScreenshot;
% [flop_coord_1, flop_coord_2, flop_coord_3] = ViewFlop(tableScreenshot, card_deck);
% [NameOfFlopCard1, NameOfFlopCard2, NameOfFlopCard3] = NameOfTheFlop(flop_coord_1, flop_coord_2, flop_coord_3);