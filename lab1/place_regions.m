function region_centres = place_regions(centre, radius)
%place_regions calculates midpoints for 9 regions with overlapping edges
x = centre(1); %extract x and y
y = centre(2);

offsetX = round(radius/10); %calculate offset / overlap
offsetY = round(radius/10);

region_centres = zeros(2, 9); %init regions

if (x > 2* radius - offsetX && y > 2* radius - offsetY) %check if calculation is possible
    %Calculate region centres by moving +/-(2*radius - offset) in x and y 
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

