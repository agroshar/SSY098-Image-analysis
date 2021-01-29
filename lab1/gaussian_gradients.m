function [grad_x, grad_y] = gaussian_gradients(img, std)
%gaussian_gradients Calculates the gaussian derivative
%   for a image after filtering the image

fil_img = gaussian_filter(img, std); % filter using gaussian filter

h = [-1/2; 0; 1/2]; % Usage of the gaussian derivative
   
grad_x = imfilter(fil_img, h.', 'symmetric'); % Calculate X-derivative
grad_y = imfilter(fil_img, h, 'symmetric'); % Calculate Y-derivative

end

