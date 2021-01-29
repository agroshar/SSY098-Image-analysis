load digits.mat; %load data

position = [19,19]; % init position and radius
radius = 6;

for i = 1:size(digits_training, 2) %iterate through all digits
    %calculate descriptor for all digits
    image = digits_training(i).image; 
    digits_training(i).descriptor = gradient_descriptor(image, position, radius); 
end