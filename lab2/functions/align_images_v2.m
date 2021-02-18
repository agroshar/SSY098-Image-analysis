function warped = align_images_v2(source, target, threshold, upright) 
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
source_g = mean(source, 3);
source_g = im2double(source_g); % Convert to double
target_g = mean(target, 3);
target_g = im2double(target_g); % Convert to double

[pts1, descs1] = extractSIFT(source_g, upright);
[pts2, descs2] = extractSIFT(target_g, upright);
corrs = matchFeatures(descs1', descs2', 'MaxRatio', 0.8, 'MatchThreshold', 100);


[A,t] = ransac_fit_affine(pts1(:, corrs(:, 1)), pts2(:, corrs(:, 2)), threshold);
warped = affine_warp(size(target), source, A, t); 
end

