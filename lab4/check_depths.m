function positive = check_depths(Ps, U)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
positive = zeros(size(Ps, 2), 1);
for i = 1:size(Ps, 2)
    positive(i) = Ps{i}(3, :) * [U; 1];
end
positive = positive > 0;
end

