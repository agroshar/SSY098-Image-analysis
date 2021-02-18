function warped = align_images_inlier_ls(source, target, threshold) 
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
if (size(source, 3) > 1)
    source_g = im2double(source); % Convert to double
    source_g = mean(source_g, 3);
else
   source_g = im2double(source);
end
if (size(target, 3) > 1)
    target_g = im2double(target); % Convert to double
    target_g = mean(target_g, 3);
else
   target_g = im2double(target);
end

[pts1, descs1] = extractSIFT(source_g);
[pts2, descs2] = extractSIFT(target_g);

corrs = matchFeatures(descs1', descs2', 'MaxRatio', 0.8, 'MatchThreshold', 100);

pts = pts1(:, corrs(:, 1));
pts_tilde = pts2(:, corrs(:, 2));

[A,t] = ransac_fit_affine(pts, pts_tilde, threshold);

residual = residual_lgths(A, t, pts, pts_tilde);

inliers_indices = find(residual <= threshold);

[A, t] = least_squares_affine(pts(:, inliers_indices), pts_tilde(:, inliers_indices));

warped = affine_warp(size(target), source, A, t); 
end



