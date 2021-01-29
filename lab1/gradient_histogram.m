function histogram = gradient_histogram(grad_x, grad_y)
%gradient_histogram Summary of this function goes here
    angles = atan2(grad_x, grad_y); % calculate angle

    histogram = zeros(8, 1); % init histogram
    
    for i = 1:numel(angles) %iterate through all angles
        angle = angles(i);
        len = (grad_x(i)^2 + grad_y(i)^2)^(1/2); % calc length of vector
        
        % Assign to bins
        
        if (angle < pi / 8)
            histogram(4) = histogram(4) + len;
        elseif (angle < pi / 4)
            histogram(3) = histogram(3) + len;
        elseif (angle < 3*pi/8)
            histogram(2) = histogram(2) + len;
        elseif (angle < pi/2)
            histogram(1) = histogram(1) + len;
        elseif (angle < 5*pi/8)
            histogram(8) = histogram(8) + len;
        elseif (angle < 3*pi/4)
            histogram(7) = histogram(7) + len;
        elseif (angle < 7*pi/8)
            histogram(6) = histogram(6) + len;
        else
            histogram(5) = histogram(5) + len;
        end
    end
end

