% WRITE HERE YOUR FUNCTION FOR EXERCISE 2
 
function count = countdown()
persistent n     
    if isempty(n)
        n = 5;
    end
value = n;
secondstring = 'seconds left';
n =n - 1;
if (value<=0)
count = 'The countdown has expired';
else
count = [num2str(value), ' ', secondstring];
end
end