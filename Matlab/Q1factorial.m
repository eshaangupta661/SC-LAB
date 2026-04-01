n = input('Enter number: ');
disp(factorial(n))

n = input('Enter a number: ');
result = 1;
temp = n;

while temp > 0
    result = result * temp;
    temp = temp - 1;
end

fprintf('Factorial of %d is %d\n', n, result);