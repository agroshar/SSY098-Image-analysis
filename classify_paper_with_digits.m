function [label] = classify_paper_with_digits(digit_image, digits_training, position, radius)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
    compVal = -1;
    
    descriptor = gradient_descriptor(digit_image, position, radius);
    
    for i = 1: 100
        cVal = sum(abs(descriptor - digits_training(i).descriptor));
        if (compVal == -1 || compVal > cVal)
            compVal = cVal;
            label = digits_training(i).label;
        end
    end
    
    disp(['I am label ' num2str(label)])
end

