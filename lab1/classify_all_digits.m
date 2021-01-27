prepare_digits;

p = 0;

values = digits_validation;

for i = 1:50
    label = classify_digit(values(i).image, digits_training);
    if (label == values(i).label)
        p = p + 1;
    end
end

p = p / 50 * 100;