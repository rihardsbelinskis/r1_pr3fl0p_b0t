function [position] = DeterminePosition(tableScreenshot, dealer_chip)

    % Finding dealer button's position
    for X1 = [570 297 1003 1077] % values x
        for Y1 = [568 335 199]   % values y
            
            possible_coordinates = [X1 Y1 45 45];
            potential_pos_fit_1 = imcrop(tableScreenshot, possible_coordinates);
            dealer_chip = imresize(dealer_chip, [46 46]);
            diff_1 = potential_pos_fit_1 - dealer_chip;
            [intensity_1,x_1]=imhist(diff_1);
            
            if intensity_1(1) > 10 & intensity_1(2:10) > 5
                position = possible_coordinates;
            else
                continue;
            end
        end
    end
end