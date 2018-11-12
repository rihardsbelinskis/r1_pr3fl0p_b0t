function [gotCards] = DoIHaveAHand(tableScreenshot)

    hand_coords = [828 655 2 2];
    hand_check = imcrop(tableScreenshot, hand_coords);

    [intensity, x_val] = imhist(hand_check);
    if intensity(256) > 20 & intensity(1) < 1
        gotCards = 1;
    else
        gotCards = 0;
        Sleep(0.5);
    end

end