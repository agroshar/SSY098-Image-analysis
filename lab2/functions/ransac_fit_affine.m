function [A,t] = ransac_fit_affine(pts, pts_tilde, threshold)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

K = size(pts, 2) * 1000;
count = size(pts, 2);

for c = 1:K
    i = randperm(size(pts, 2), 3);
    [A_c, t_c] = estimate_affine(pts(:, i), pts_tilde(:, i));
    if (~isnan(A_c) & ~isinf(A_c) & ~isnan(t_c) & ~ isinf(t_c))
        residual = residual_lgths(A_c, t_c, pts, pts_tilde);
        count_c = sum(residual > threshold);

        if (count > count_c)
            count = count_c;
            A = A_c;
            t = t_c;
        end
    end
end

end

