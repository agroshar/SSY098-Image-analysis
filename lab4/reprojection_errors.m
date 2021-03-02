function errors = reprojection_errors(Ps, us, U)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
errors = zeros(size(Ps, 2), 1);
for i = 1:size(Ps, 2)
    lambda = Ps{i}(3, :) * [U; 1];
    if (lambda > 0)
        dx = Ps{i}(1, :) * [U; 1] / lambda - us(1, i);
        dy = Ps{i}(2, :) * [U; 1] / lambda - us(2, i);
        errors(i) = sqrt(dx^2 + dy^2);
    else
        errors(i) = inf;
    end
end
end

