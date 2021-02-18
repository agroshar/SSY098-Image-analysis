function warped = warp_16x16(source)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
warped = zeros(size(source));

for x = 1:size(source, 1)
    for y = 1:size(source, 2)
        pos = transform_coordinates([x, y]);
        warped(y,x) = sample_image_at(source, pos);
    end
end

end

