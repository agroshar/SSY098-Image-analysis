function histogram = gradient_histogram(grad_x, grad_y)
%gradient_histogram Summary of this function goes here
%   Detailed explanation goes here
    angles = atan2(grad_x, grad_y);

    histogram = zeros(8, 1);

    %histogram(1) = sum(angles < pi / 8, 'all');
    %histogram(2) = sum(pi /8 <= angles < pi / 4, 'all');
    %histogram(3) = sum(pi /4 <= angles < 3 * pi / 8, 'all');
    %histogram(4) = sum(3* pi /8 <= angles < pi / 2, 'all');
    %histogram(5) = sum(pi /2 <= angles < 5* pi / 8, 'all');
    %histogram(6) = sum(5* pi /8 <= angles < 3* pi / 4, 'all');
    %histogram(7) = sum(3* pi /4 <= angles < 7* pi / 8, 'all');
    %histogram(8) = sum(7* pi /8 <= angles, 'all');
    
    for i = 1:numel(angles)
        angle = angles(i);
        len = (grad_x(i)^2 + grad_y(i)^2)^(1/2);
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