function [actionOnMe] = ViewAction(tableScreenshot, checkbtn)

    checkbtn_coords = [572 843 289 84];
    btn_cropped = imcrop(tableScreenshot, checkbtn_coords);
    btn_cropped = imresize(btn_cropped,[36 151]);
    
    TakeScreenshot;
    diff = imsubtract(rgb2gray(checkbtn) ,rgb2gray(btn_cropped));
    [intensity,x]=imhist(diff);
          
    if intensity(2:5) > 100
        actionOnMe = 1;
    else
        Sleep(0.5);
        [actionOnMe] = ViewAction(tableScreenshot, checkbtn);
    end
    
end