function [A, t] = estimate_affine(pts, pts_tilde)
%estimate_affine estimates an affine trasnformation mapping pts to pts_tilde
A = (pts_tilde(:, 1:2) - pts_tilde(:, 3)) / (pts(:, 1:2) - pts(:, 3));
t = pts_tilde(:, 3) - A * pts(:, 3);
end

