function region_centres = place_regions(centre, radius)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x = centre(1);
y = centre(2);

offsetX = round(radius/10);
offsetY = round(radius/10);

region_centres = zeros(2, 9);

if (x > 2* radius - offsetX && y > 2* radius - offsetY)
    region_centres(:, 1) = [x - 2*radius + offsetX, y];
    region_centres(:, 2) = [x - 2*radius + offsetX, y - 2*radius + offsetY];
    region_centres(:, 3) = [x - 2*radius + offsetX, y + 2*radius - offsetY];
    
    region_centres(:, 4) = [x, y];
    region_centres(:, 5) = [x, y - 2*radius + offsetY];
    region_centres(:, 6) = [x, y + 2*radius - offsetY];
    
    region_centres(:, 7) = [x + 2*radius - offsetX, y];
    region_centres(:, 8) = [x + 2*radius - offsetX, y - 2*radius + offsetY];
    region_centres(:, 9) = [x + 2*radius - offsetX, y + 2*radius - offsetY];
    
end

end

