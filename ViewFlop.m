function [flop_coord_1, flop_coord_2, flop_coord_3] = ViewFlop(tableScreenshot, card_deck)

    flop_position_1 = [471 302 21 46]; % left top width height
    flop_position_2 = [568 302 21 46];
    flop_position_3 = [665 302 21 46];

    % Cropping 
    flop_card_1 = imcrop(tableScreenshot, flop_position_1);
    flop_card_2 = imcrop(tableScreenshot, flop_position_2);
    flop_card_3 = imcrop(tableScreenshot, flop_position_3);

    % Resizing
    flop_card_1 = imresize(flop_card_1, [48 22]);
    flop_card_2 = imresize(flop_card_2, [48 22]);
    flop_card_3 = imresize(flop_card_3, [48 22]);

    % Matching flop card 1
    for L1 = [2 72 142 212 282 352 422 492 562 632 702 772 842] % values (2 - A)
        for T1 = [2 100 198 296]                                % suits (c s d h)
            
            % additional if loop for when T1 = 198 || 296 ??
            
            search_coordinates_1 = [L1 T1 21 47];
            potential_fit_1 = imcrop(card_deck, search_coordinates_1);
            diff_1 = imsubtract(rgb2gray(flop_card_1) ,rgb2gray(potential_fit_1));
            [intensity_1,x_1]=imhist(diff_1);

            if intensity_1(1) > 100 & intensity_1(2:255) < 15 & intensity_1(256) < 1
                flop_coord_1 = search_coordinates_1;
            else
                continue;
            end
        end
    end

    % Matching flop card 2
    for L2 = [2 72 142 212 282 352 422 492 562 632 702 772 842] % values (2 - A)
        for T2 = [2 100 198 296]                                % suits (c s d h)
            search_coordinates_2 = [L2 T2 21 47];
            potential_fit_2 = imcrop(card_deck, search_coordinates_2);
            diff_2 = imsubtract(rgb2gray(flop_card_2) ,rgb2gray(potential_fit_2));
            [intensity_2,x_2]=imhist(diff_2);

            if intensity_2(1) > 100 & intensity_2(2:255) < 15 & intensity_2(256) < 1
                flop_coord_2 = search_coordinates_2;
            else
                continue;
            end  
        end
    end

    % Matching flop card 3
    for L3 = [2 72 142 212 282 352 422 492 562 632 702 772 842] % values (2 - A)
        for T3 = [2 100 198 296]                                % suits (c s d h)
            search_coordinates_3 = [L3 T3 21 47];
            potential_fit_3 = imcrop(card_deck, search_coordinates_3);
            diff_3 = imsubtract(rgb2gray(flop_card_3) ,rgb2gray(potential_fit_3));
            [intensity_3,x_3]=imhist(diff_3);

            if intensity_3(1) > 100 & intensity_3(2:255) < 15 & intensity_3(256) < 1
                flop_coord_3 = search_coordinates_3;
            else
                continue;
            end 
        end
    end
end
