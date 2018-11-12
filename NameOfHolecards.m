function [myHand] = NameOfHolecards(holecard_coord_1, holecard_coord_2)
%% Detecting suits
% 3 101 199 297
% s  c   d   h

    suit_1 = holecard_coord_1(2);
    if suit_1 == 3
        suit_1 = "s";
    elseif suit_1 == 101
        suit_1 = "c";
    elseif suit_1 == 199
        suit_1 = "d";
    elseif suit_1 == 297
        suit_1 = "h";
    end

    suit_2 = holecard_coord_2(2);
    if suit_2 == 3
        suit_2 = "s";
    elseif suit_2 == 101
        suit_2 = "c";
    elseif suit_2 == 199
        suit_2 = "d";
    elseif suit_2 == 297
        suit_2 = "h";
    end

%% Detecting values
% 3 73 143 213 283 353 423 493 563 633 703 773 843
% 2  3  4   5   6   7   8   9   T   J   Q   K   A

    value_1 = holecard_coord_1(1);
    if value_1 == 3
        value_1 = "2";
    elseif value_1 == 73
        value_1 = "3";
    elseif value_1 == 143
        value_1 = "4";
    elseif value_1 == 213
        value_1 = "5";
    elseif value_1 == 283
        value_1 = "6";
    elseif value_1 == 353
        value_1 = "7";
    elseif value_1 == 423
        value_1 = "8";
    elseif value_1 == 493
        value_1 = "9";
    elseif value_1 == 563
        value_1 = "T";
    elseif value_1 == 633
        value_1 = "J";
    elseif value_1 == 703
        value_1 = "Q";
    elseif value_1 == 773
        value_1 = "K";
    elseif value_1 == 843
        value_1 = "A";
    end

    value_2 = holecard_coord_2(1);
    if value_2 == 3
        value_2 = "2";
    elseif value_2 == 73
        value_2 = "3";
    elseif value_2 == 143
        value_2 = "4";
    elseif value_2 == 213
        value_2 = "5";
    elseif value_2 == 283
        value_2 = "6";
    elseif value_2 == 353
        value_2 = "7";
    elseif value_2 == 423
        value_2 = "8";
    elseif value_2 == 493
        value_2 = "9";
    elseif value_2 == 563
        value_2 = "T";
    elseif value_2 == 633
        value_2 = "J";
    elseif value_2 == 703
        value_2 = "Q";
    elseif value_2 == 773
        value_2 = "K";
    elseif value_2 == 843
        value_2 = "A";
    end

%% Displaying values in text
    value = value_1 + value_2;

    if suit_1 == suit_2
        suit = 's';
    else
        suit = 'o';
    end
    myHand = value + suit;
    fprintf("Dealt to Hero: ");
    fprintf(myHand+' \n');
end