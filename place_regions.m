function [region_centres] = place_regions(centre, radius)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

region_centres = zeros(2, 9);
x = centre(1);
y = centre(2);

region_centres(:,1) = [x-2*radius, y-2*radius];
region_centres(:,2) = [x, y-2*radius];
region_centres(:,3) = [x+2*radius, y-2*radius];

region_centres(:,4) = [x-2*radius, y];
region_centres(:,5) = [x, y];
region_centres(:,6) = [x+2*radius, y];

region_centres(:,7) = [x-2*radius, y+2*radius];
region_centres(:,8) = [x, y+2*radius];
region_centres(:,9) = [x+2*radius, y+2*radius];

end

