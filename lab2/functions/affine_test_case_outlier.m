function [pts, pts_tilde, A_true, t_true] = affine_test_case_outlier(outlier_rate)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
C = 500;

N = 300;
O = round(N / (1-outlier_rate)) - N;

pts = zeros(2, N + O);
pts_tilde = zeros(2, N + O);

pts(:, 1:N) = randi(C,2,N);
A_true = randi(C,2,2);
t_true = randi(C,2,1);

pts_tilde(:, 1:N) = A_true * pts(:, 1:N) + t_true;

for i = 1:O
    pts(:, N+i) = randi(C,2,1);
    pts_tilde(:, N+i) = randi(C,2,1);
end

end

