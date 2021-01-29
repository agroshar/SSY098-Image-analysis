function label = classify_digit(digit_image, digits_training)
    %classify_digit classify a digit to a given set
    
    compVal = -1; %init compare value
    
    position = [19,19]; % init position and radius
    radius = 6;
    
    descriptor = gradient_descriptor(digit_image, position, radius); % get gradient descriptors
    
    for i = 1: size(digits_training, 2) %iterate through all training digits
        cVal = sum(abs(descriptor - digits_training(i).descriptor)); %calculate comparision value
        if (compVal == -1 || compVal > cVal) % if new comparision is better than the old one, overite classifier
            compVal = cVal;
            label = digits_training(i).label;
        end
    end
    
    disp(['Classified as ' num2str(label)])
end

