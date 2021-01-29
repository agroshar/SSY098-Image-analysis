percentage = 0; % Init percentage

for i = 1:size(digits_validation, 2) % Iterate over all digits
    
    disp(['I am digit ' num2str(digits_validation(i).label)]) % display true value
    
    label = classify_digit(digits_validation(i).image, digits_training); %Classify digit
    if (label == digits_validation(i).label) % check if classifier and true value are the same
        percentage = percentage + 1; % Increase value
    end
end

percentage = percentage / size(digits_validation, 2) * 100; % Calculate percentage
disp(['My results were correct by ' num2str(percentage) '%'])