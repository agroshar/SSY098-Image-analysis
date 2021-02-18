function [A, t] = least_squares_affine(pts, pts_tilde)
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
M = zeros(size(pts, 2) * 2, 6);
v = zeros(size(pts, 2) * 2, 1);
for i = 1:size(pts, 2)
    M(i*2 -1, :) = [pts(1, i), pts(2, i), 1, 0, 0, 0];
    M(i*2, :) = [0, 0, 0, pts(1, i), pts(2, i), 1];
    v(i*2 -1) = pts_tilde(1, i);
    v(i*2) = pts_tilde(2, i);
end
T = M\v;
A = [T(1), T(2); T(4), T(5)];
t = [T(3); T(6)];
end

