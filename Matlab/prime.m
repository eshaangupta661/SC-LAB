n = input('Enter number: ');
disp(isprime(n))

n = input('Enter number: ');
isPrime = 1; % Start by assuming it is prime

if n <= 1
    isPrime = 0;
else
    for i = 2:n-1
        if mod(n, i) == 0
            isPrime = 0; % Found a divisor, so it's not prime
            break; 
        end
    end
end

if isPrime == 1
    disp('It is a Prime Number');
else
    disp('It is NOT a Prime Number');
end