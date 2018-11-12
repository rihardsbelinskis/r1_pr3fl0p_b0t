% Take screen capture
robot = java.awt.Robot();
pos = [250 5 1420 1010]; % [left top width height]
rect = java.awt.Rectangle(pos(1),pos(2),pos(3),pos(4));
cap = robot.createScreenCapture(rect);

% Convert to an RGB image
rgb = typecast(cap.getRGB(0,0,cap.getWidth,cap.getHeight,[],0,cap.getWidth),'uint8');
tableScreenshot = zeros(cap.getHeight,cap.getWidth,3,'uint8');
tableScreenshot(:,:,1) = reshape(rgb(3:4:end),cap.getWidth,[])';
tableScreenshot(:,:,2) = reshape(rgb(2:4:end),cap.getWidth,[])';
tableScreenshot(:,:,3) = reshape(rgb(1:4:end),cap.getWidth,[])';

% Show or save to file
% imshow(tableScreenshot);
imwrite(tableScreenshot,'screen.png');

%system('python call.py')

