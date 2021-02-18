function [A,t] = ransac_fit_affine(pts, pts_tilde, threshold)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

k_max = size(pts, 2) * 1000;
outliers = size(pts, 2);

nu = 0.01;

count = 0;
while count < k_max
    i = randperm(size(pts, 2), 3);
    [A_c, t_c] = estimate_affine(pts(:, i), pts_tilde(:, i));
    
    if (~isnan(A_c) & ~isinf(A_c) & ~isnan(t_c) & ~ isinf(t_c))
        residual = residual_lgths(A_c, t_c, pts, pts_tilde);
        outliers_c = sum(residual > threshold);

        if (outliers > outliers_c)
            outliers = outliers_c;
            A = A_c;
            t = t_c;
            
            %Update k_max
            ep = (size(pts, 2) - outliers) / size(pts, 2);
            k_max = log(nu) / log(1-ep^3);
        end
    end
    count = count + 1;
end

end

