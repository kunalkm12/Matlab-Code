function img = kunalkam_hw7_p6(f,p)
    image = imread(f);
    [m,n] = size(image);
    img = image;
    for i = 1:m
        for j = 1:n
            img(i,j) = double(image(i,j)); % Double conversion
        end
    end
    if size(image,3) == 3 
        red = img(:,:,1); 
        green = img(:,:,2); 
        blue = img(:,:,3); 
        img(:,:,1) = kunalkam_hw7_p5(red,p);
        img(:,:,2) = kunalkam_hw7_p5(green,p);
        img(:,:,3) = kunalkam_hw7_p5(blue,p);
        img = uint8(img);
    else
        img = kunalkam_hw7_p5(image,p);
        img = uint8(img);
    end
end
% I used the following links to figure out how to
% check if an image was color or not and how to access
% each color channel of the image. I am not sure if this
% is permitted.
% https://www.mathworks.com/matlabcentral/answers/72412-how-can-i-check-that-my-image-is-rgb
% https://www.mathworks.com/matlabcentral/answers/91036-how-do-i-split-a-color-image-into-its-3-rgb-channels
% I only submitted this since I didn't in essence copy any code
% These sites only helped to figure out how to check images
% All the rest of the code is pretty simple and I have done it from
% scratch myself as the question instructed
% SVD is throwing some error for some reason though
