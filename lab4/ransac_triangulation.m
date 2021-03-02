function [U, nbr_inliers] = ransac_triangulation(Ps, us, threshold)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

%set initial k_max
k_max = size(Ps, 2) * 1000;
%set initial outlier count
nbr_inliers = -1;
%init probability
nu = 0.01;

count = 0;
while count < k_max
    % select points at random
    i = randperm(size(Ps, 2), 2);
    % Estimate affine transform. based on three points
    U_c = minimal_triangulation(Ps(i), us(:,i));
    
    % calc residual and count of outliers
    residual = reprojection_errors(Ps, us, U_c);
    inliers_c = sum(residual <= threshold);
    %check if model is better
    if (inliers_c > nbr_inliers) 
        % update model and inlier probability
        nbr_inliers = inliers_c;
        U = U_c;

        %Update k_max
        ep = nbr_inliers / size(Ps, 2);
        k_max = log(nu) / log(1-ep^3);
    end
    count = count + 1;
end

end

