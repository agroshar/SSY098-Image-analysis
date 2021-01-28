function [grad_x, grad_y] = gaussian_gradients(img, std)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
fil_img = gaussian_filter(img, std);

h = [-1/2; 0; 1/2];%-1 * fspecial('prewitt');
   
grad_x = imfilter(fil_img, h.', 'symmetric');
grad_y = imfilter(fil_img, h, 'symmetric');




end