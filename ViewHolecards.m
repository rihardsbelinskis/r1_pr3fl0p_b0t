function [holecard_coord_1, holecard_coord_2] = ViewHolecards(tableScreenshot, card_deck)

    holecard_position_1 = [820 621 20 48]; % left top width height
    holecard_position_2 = [910 621 20 48];

    % Cropping
    holecard_1 = imcrop(tableScreenshot, holecard_position_1);
    holecard_2 = imcrop(tableScreenshot, holecard_position_2);

    % Resizing
    holecard_1 = imresize(holecard_1, [49 21]);
    holecard_2 = imresize(holecard_2, [49 21]);

    % Matching holecard 1
    for L1 = 3:70:843                                    % values (2 - A)
        for T1 = 3:98:297                                % suits (s c d h)

            search_coordinates_1 = [L1 T1 20 48];
            potential_fit_1 = imcrop(card_deck, search_coordinates_1);
            diff_1 = imsubtract(rgb2gray(holecard_1) ,rgb2gray(potential_fit_1));
            [intensity_1,x_1]=imhist(diff_1);

            if intensity_1(1) > 100 & intensity_1(2:end) < 1
                holecard_coord_1 = search_coordinates_1;
            else
                continue;
            end
        end
    end

    % Matching holecard 2
    for L2 = 3:70:843                                   % values (2 - A)
        for T2 = 3:98:297                               % suits (s c d h)
            search_coordinates_2 = [L2 T2 20 48];
            potential_fit_2 = imcrop(card_deck, search_coordinates_2);
            diff_2 = imsubtract(rgb2gray(holecard_2) ,rgb2gray(potential_fit_2));
            [intensity_2,x_2]=imhist(diff_2);

            if intensity_2(1) > 100 & intensity_2(2:end) < 1
                holecard_coord_2 = search_coordinates_2;
            else
                continue;
            end
        end
    end
end