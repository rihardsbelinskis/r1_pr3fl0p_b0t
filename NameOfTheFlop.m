function [NameOfFlopCard1, NameOfFlopCard2, NameOfFlopCard3] = NameOfTheFlop(flop_coord_1, flop_coord_2, flop_coord_3)
%% Detecting suits
% 2 100 198 296 
% c  s   d   h

suit_1 = flop_coord_1(2);
if suit_1 == 2
    suit_1 = "Spades";
elseif suit_1 == 100
    suit_1 = "Clubs";
elseif suit_1 == 198
    suit_1 = "Diamonds";
elseif suit_1 == 296
    suit_1 = "Hearts";
end

suit_2 = flop_coord_2(2);
if suit_2 == 2
    suit_2 = "Spades";
elseif suit_2 == 100
    suit_2 = "Clubs";
elseif suit_2 == 198
    suit_2 = "Diamonds";
elseif suit_2 == 296
    suit_2 = "Hearts";
end

suit_3 = flop_coord_3(2);
if suit_3 == 2
    suit_3 = "Spades";
elseif suit_3 == 100
    suit_3 = "Clubs";
elseif suit_3 == 198
    suit_3 = "Diamonds";
elseif suit_3 == 296
    suit_3 = "Hearts";
end

%% Detecting values
% 2 72 142 212 282 352 422 492 562 632 702 772 842
% 2  3  4   5   6   7   8   9   T   J   Q   K   A

value_1 = flop_coord_1(1);
if value_1 == 2
    value_1 = "Deuce of ";
elseif value_1 == 72
    value_1 = "Three of ";
elseif value_1 == 142
    value_1 = "Four of ";
elseif value_1 == 212
    value_1 = "Five of ";
elseif value_1 == 282
    value_1 = "Six of ";
elseif value_1 == 352
    value_1 = "Seven of ";
elseif value_1 == 422
    value_1 = "Eight of ";
elseif value_1 == 492
    value_1 = "Nine of ";
elseif value_1 == 562
    value_1 = "Ten of ";
elseif value_1 == 632
    value_1 = "Jack of ";
elseif value_1 == 702
    value_1 = "Queen of ";
elseif value_1 == 772
    value_1 = "King of ";
elseif value_1 == 842
    value_1 = "Ace of ";
end

value_2 = flop_coord_2(1);
if value_2 == 2
    value_2 = "Deuce of ";
elseif value_2 == 72
    value_2 = "Three of ";
elseif value_2 == 142
    value_2 = "Four of ";
elseif value_2 == 212
    value_2 = "Five of ";
elseif value_2 == 282
    value_2 = "Six of ";
elseif value_2 == 352
    value_2 = "Seven of ";
elseif value_2 == 422
    value_2 = "Eight of ";
elseif value_2 == 492
    value_2 = "Nine of ";
elseif value_2 == 562
    value_2 = "Ten of ";
elseif value_2 == 632
    value_2 = "Jack of ";
elseif value_2 == 702
    value_2 = "Queen of ";
elseif value_2 == 772
    value_2 = "King of ";
elseif value_2 == 842
    value_2 = "Ace of ";
end

value_3 = flop_coord_3(1);
if value_3 == 2
    value_3 = "Deuce of ";
elseif value_3 == 72
    value_3 = "Three of ";
elseif value_3 == 142
    value_3 = "Four of ";
elseif value_3 == 212
    value_3 = "Five of ";
elseif value_3 == 282
    value_3 = "Six of ";
elseif value_3 == 352
    value_3 = "Seven of ";
elseif value_3 == 422
    value_3 = "Eight of ";
elseif value_3 == 492
    value_3 = "Nine of ";
elseif value_3 == 562
    value_3 = "Ten of ";
elseif value_3 == 632
    value_3 = "Jack of ";
elseif value_3 == 702
    value_3 = "Queen of ";
elseif value_3 == 772
    value_3 = "King of ";
elseif value_3 == 842
    value_3 = "Ace of ";
end

%% Displaying values in text

fprintf("Here comes the flop:\n\n")
NameOfFlopCard1 = value_1 + suit_1;
fprintf(NameOfFlopCard1+'\n');
NameOfFlopCard2 = value_2 + suit_2;
fprintf(NameOfFlopCard2+'\n');
NameOfFlopCard3 = value_3 + suit_3;
fprintf(NameOfFlopCard3+'\n');

end