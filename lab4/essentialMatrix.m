function E = essentialMatrix(P1,P2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
R1 = P1(:,1:3);
t1 = P1(:,4);
R2 = P2(:,1:3);
t = P2(:,4) - t1;

R = R1\R2; 

t_x = [0, -1*t(3), t(2); t(3), 0, -1*t(1); -1*t(2), t(1), 0];

E = t_x * R;
end

