function residual_lgths = residual_lgths(A, t, pts, pts_tilde)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
pts2_tilde = A * pts + t;
residual_lgths = pts_tilde - pts2_tilde;
residual_lgths = sqrt(sum(residual_lgths.^2, 1));
end

