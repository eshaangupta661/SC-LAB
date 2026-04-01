% ex_1c.m
% Interactive data input and formatted output
% Solution of Network equations
Z = input('Enter Z : ');
v = input('Enter v : ');
i = Z\v; % Left division - computes inv(Z)*v
disp('The results are : ')
fprintf('i1 = %g A, i2 = %g A, i3 = %g A \n', i(1),i(2),i(3))