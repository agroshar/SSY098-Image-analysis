function jacobian = compute_jacobian(Ps, U)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
jacobian = zeros(2*size(Ps, 2), 3);
for i = 1:size(Ps, 2)
    a = Ps{i}(1, :);
    b = Ps{i}(2, :);
    c = Ps{i}(3, :);
    sumA = a(1) * U(1) + a(2) * U(2) + a(3) * U(3) + a(4);
    sumB = b(1) * U(1) + b(2) * U(2) + b(3) * U(3) + b(4);
    sumC = c(1) * U(1) + c(2) * U(2) + c(3) * U(3) + c(4);
    
    jacobian(2*i-1, 1) = (a(1)*sumC - c(1)*sumA) / sumC^2;
    jacobian(2*i-1, 2) = (a(2)*sumC - c(2)*sumA) / sumC^2;
    jacobian(2*i-1, 3) = (a(3)*sumC - c(3)*sumA) / sumC^2;
    jacobian(2*i, 1) = (b(1)*sumC - c(1)*sumB) / sumC^2;
    jacobian(2*i, 2) = (b(2)*sumC - c(2)*sumB) / sumC^2;
    jacobian(2*i, 3) = (b(3)*sumC - c(3)*sumB) / sumC^2;
end
end

