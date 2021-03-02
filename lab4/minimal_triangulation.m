function U = minimal_triangulation(Ps, us)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
M = zeros(5);
M(1, 1:3) = -1*Ps{1}(1,1:3);
M(1, 4) = us(1,1);
M(1, 5) = 0;
M(2, 1:3) = -1*Ps{1}(2,1:3);
M(2, 4) = us(2,1);
M(2, 5) = 0;
M(3, 1:3) = -1*Ps{1}(3,1:3);
M(3, 4) = 1;
M(3, 5) = 0;
M(4, 1:3) = -1*Ps{2}(1,1:3);
M(4, 4) = 0;
M(4, 5) = us(1,2);
M(5, 1:3) = -1*Ps{2}(2,1:3);
M(5, 4) = 0;
M(5, 5) = us(2,2);

v = [Ps{1}(1,4); Ps{1}(2,4); Ps{1}(3,4); Ps{2}(1,4); Ps{2}(2,4)];

T = M\v;

U = T(1:3);
end

