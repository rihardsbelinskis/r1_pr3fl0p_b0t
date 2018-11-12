function [myPosition] = NameOfPosition(position)

%     pos1_coords = [570 568 45 45];  % button in pos 1, im in CO
%     pos2_coords = [297 335 45 45];  % button in pos 2, im in HJ
%     pos3_coords = [570 199 45 45];  % button in pos 3, im in UTG
%     pos4_coords = [1003 199 45 45]; % button in pos 4, im in BB
%     pos5_coords = [1077 335 45 45]; % button in pos 5, im in SB
%     pos6_coords = [1003 568 45 45]; % button in pos 6, im on BTN

    if position(1) == 297 & position(2) == 335
        myPosition = "HJ";
    elseif position(1) == 570 & position(2) == 199
        myPosition = "UTG";
    elseif position(1) == 1003 & position(2) == 199
        myPosition = "BB";
    elseif position(1) == 1077 & position(2) == 335
        myPosition = "SB";
    elseif position(1) == 1003 & position(2) == 568
        myPosition = "BTN";
    else
        myPosition = "CO";
    end
    fprintf('Hero is in: '+myPosition+' \n');
end