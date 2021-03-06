function [A, t] = estimate_affine(pts, pts_tilde)
%estimate_affine estimates an affine trasnformation mapping pts to pts_tilde
M = zeros(6, 6);
v = zeros(6, 1);
for i = 1:3
    M(i*2 -1, :) = [pts(1, i), pts(2, i), 1, 0, 0, 0];
    M(i*2, :) = [0, 0, 0, pts(1, i), pts(2, i), 1];
    v(i*2 -1) = pts_tilde(1, i);
    v(i*2) = pts_tilde(2, i);
end
T = M\v;
A = [T(1), T(2); T(4), T(5)];
t = [T(3); T(6)];
end

