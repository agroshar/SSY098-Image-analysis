raw_image = imread('paper_with_digits.png');  % uint8 [0, 255] or uint16 [0, 65535]

%raw_image = mean(raw_image, 3);
test_image = im2double(raw_image); % Convert to double

centre = [1290, 950];
radius = 50;
region_centres = place_regions(centre, radius);
plot_squares(test_image, region_centres, radius)