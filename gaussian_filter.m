function [filtered_image] = gaussian_filter(image, std)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

h = fspecial('gaussian', size(image), std );
filtered_image = imfilter(image, h, 'symmetric');

end

