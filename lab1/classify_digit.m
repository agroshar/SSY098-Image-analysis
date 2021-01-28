function label = classify_digit(digit_image, digits_training)
    %UNTITLED7 Summary of this function goes here
    %   Detailed explanation goes here
    compVal = -1;
    
    position = [19,19];
    radius = 6;
    
    descriptor = gradient_descriptor(digit_image, position, radius);
    
    for i = 1: 100
        cVal = sum(abs(descriptor - digits_training(i).descriptor));
        if (compVal == -1 || compVal > cVal)
            compVal = cVal;
            label = digits_training(i).label;
        end
    end
    
    disp(['Classified as ' num2str(label)])
end

