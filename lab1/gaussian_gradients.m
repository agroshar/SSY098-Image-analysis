function [grad_x, grad_y] = gaussian_gradients(img, std)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
fil_img = gaussian_filter(img, std);
%[grad_1x, grad_1y] = imgradientxy(fil_img);
%grad_x = fil_img .* [-0.5 0 0.5];
%grad_y = fil_img .* [0 -0.5 0.5];
grad_x = zeros(size(fil_img));
grad_y = zeros(size(fil_img));

for x = 1 : size(fil_img, 2)
    for y = 1 : size(fil_img, 1)
        if (x+1 <= size(fil_img, 2) && x-1 > 0)
            grad_x(y, x) = 1/2 * (fil_img(y, x+1) - fil_img(y, x-1));
        elseif  (x+1 == size(fil_img, 2))
            grad_x(y, x) = 1/2 * (fil_img(y, x) - fil_img(y, x-1));
        elseif (x-1 == 0)
            grad_x(y, x) = 1/2 * (fil_img(y, x+1) - fil_img(y, x));
        end
        if (y+1 <= size(fil_img, 1) && y-1 > 0)
            grad_y(y, x) = 1/2 * (fil_img(y+1, x) - fil_img(y-1, x));
        elseif  (y+1 == size(fil_img, 1))
            grad_y(y, x) = 1/2 * (fil_img(y, x) - fil_img(y-1, x));
        elseif (y-1 == 0)
            grad_y(y, x) = 1/2 * (fil_img(y+1, x) - fil_img(y, x));
        end
    end
end
end

