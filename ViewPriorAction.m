function [priorAction] = ViewPriorAction(tableScreenshot, sbstatus, bbstatus, foldstatus, checkcallstatus, betraisestatus, allinstatus)

    status{1} = sbstatus;
    status{2} = bbstatus;
    status{3} = foldstatus;
    status{4} = checkcallstatus;
    status{5} = betraisestatus;
    status{6} = allinstatus;

    pos1_coords = [418 766 107 3];
    pos2_coords = [84 459 107 3];
    pos3_coords = [418 180 107 3];
    pos4_coords = [850 180 107 3];
    pos5_coords = [1215 459 107 3];

    position1 = imcrop(tableScreenshot, pos1_coords);
    position2 = imcrop(tableScreenshot, pos2_coords);
    position3 = imcrop(tableScreenshot, pos3_coords);
    position4 = imcrop(tableScreenshot, pos4_coords);
    position5 = imcrop(tableScreenshot, pos5_coords);

    position{1} = imresize(position1, [3 107]);
    position{2} = imresize(position2, [3 107]);
    position{3} = imresize(position3, [3 107]);
    position{4} = imresize(position4, [3 107]);
    position{5} = imresize(position5, [3 107]);

    for p = 1:5             % loop through all positions
        for s = 1:6         % loop through all stati
            diff = position{p}-status{s};
            [intensity,x_int] = imhist(diff);
            if intensity(1) < 700
                continue;
            else
                priorAction(p) = num2str(s);
                break;
            end
        end
    end
end