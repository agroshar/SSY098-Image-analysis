function filtered_image = gaussian_filter(image, std)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

    g = fspecial('gaussian', size(image), std);
   
    filtered_image = imfilter(image, g, 'symmetric');
end

