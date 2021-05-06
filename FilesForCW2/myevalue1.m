% WRITE HERE YOUR SCRIPT FOR EXERCISE 7

function myevalue1()
n=3;
while ((1/exp(1)) - (1-(1/n))^n >= 0.0001)
    n = n + 1;
end
approximation = (1-(1/n))^-n;
fprintf("Real value of e is: %.9f \n", exp(1));
fprintf("Approximation of e to 5dp when n = %d is: %.5f \n", n, approximation);
end