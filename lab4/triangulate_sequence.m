load('sequence.mat')
warning('off')
N = size(triangulation_examples, 2);

threshold = 5;
Us = zeros(3, N);

for i = 1:N
    [Us(:, i), nbr_inliers] = ransac_triangulation(triangulation_examples(i).Ps, triangulation_examples(i).xs, threshold);
end