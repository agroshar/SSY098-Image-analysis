function [patch] = get_patch(image, x, y, patch_radius)
%GET_PATH Summary of this function goes here
%   Detailed explanation goes here

img_size = size(image);

if x+patch_radius>img_size(2) || x-patch_radius<1 || y-patch_radius<1 || y+patch_radius>img_size(1)
    error('Patch outside image borders')
end

patch = image(y-patch_radius : y+patch_radius, x-patch_radius : x+patch_radius, : );

end

