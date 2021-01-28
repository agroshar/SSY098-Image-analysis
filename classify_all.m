p = 0;

values = digits_validation;

for i = 1:50
    
    disp(['I am digit ' num2str(values(i).label)])
    
    label = classify_digit(values(i).image, digits_training);
    if (label == values(i).label)
        p = p + 1;
    end
end

p = p / 50 * 100;
disp(['My results were correct by ' num2str(p) '%']) * 100;