function value = sample_image_at(img, position)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
position = round(position);
if (size(img, 1) >= position(1) && size(img, 2) >= position(2)...
    && position(1) >= 1 && position(2) >= 1)
    value = img(position(2), position(1));
else
    value = 1;
end
end

