function U = refine_triangulation(Ps, us, Uhat)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
warning('off')
U = Uhat;
for i = 1:5
    J = compute_jacobian(Ps, U);
    r = compute_residuals(Ps, us, U);
    U = U - (J.' * J) \ J.' * r;
end
end

