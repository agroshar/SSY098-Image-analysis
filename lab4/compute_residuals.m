function all_residuals = compute_residuals(Ps, us, U)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
all_residuals = zeros(2*size(Ps, 2), 1);
for i = 1:size(Ps, 2)
    lambda = Ps{i}(3, :) * [U; 1];
    if (lambda > 0)
        all_residuals(2*i-1) = Ps{i}(1, :) * [U; 1] / lambda - us(1, i);
        all_residuals(2*i) = Ps{i}(2, :) * [U; 1] / lambda - us(2, i);
    else
        all_residuals(2*i-1) = inf;
        all_residuals(2*i) = inf;
    end
end
end

