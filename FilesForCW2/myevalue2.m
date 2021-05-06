% WRITE HERE YOUR SCRIPT FOR EXERCISE 7

function myevalue2()
approximation = 5;
n = 7;
while ((exp(1) - approximation) >= 0.0001)
    approximation = approximation + (1/factorial(n));
    n = n + 1;
end

fprintf("Real value of n is: %.9f \n", exp(1));
fprintf("Approximation of n to 5dp when n = %d is: %.5f \n", n, approximation);

end