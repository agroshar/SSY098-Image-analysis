load digits.mat;

position = [15,15];
radius = 5;

for i = 1:100
    image = digits_training(i).image;
    digits_training(i).descriptor = gradient_descriptor(image, position, radius);
    
end

%digits_training(12).image