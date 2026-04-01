% ex_1b.m
% Solution of Network equations
Z = [170 -100 -30; -100 160 -30; -30 -30 70];
v = [0; 0; 10];
disp('The mesh currents are : ')
i = inv(Z)*v