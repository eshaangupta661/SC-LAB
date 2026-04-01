n = input('Enter number: ');
disp(fliplr(num2str(n)))

n = input('Enter number: ');
reversed = 0;

while n > 0
    lastDigit = mod(n, 10);          % Get the last digit
    reversed = (reversed * 10) + lastDigit; % Move digits left and add new one
    n = floor(n / 10);               % Remove the last digit
end

fprintf('Reversed: %d\n', reversed);