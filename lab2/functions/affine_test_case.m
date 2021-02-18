function [pts, pts_tilde, A_true, t_true] = affine_test_case
%affine_test_case generates random points, pts, and applys a 
% random transformation. Then transform these points to create a pts_tilde
C = 250;

N = 3;
pts = randi(C,2,N);
A_true = randi(C,2,2);
t_true = randi(C,2,1);

pts_tilde = A_true * pts + t_true;
end

