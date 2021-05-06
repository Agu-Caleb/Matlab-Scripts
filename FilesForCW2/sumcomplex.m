% WRITE HERE YOUR FUNCTION FOR EXERCISE 8

function [pattern, summation] = sumcomplex(R,I,S)

if length(R) ~= length(I)
    error("R and I differs")
elseif max(S) > length(R)
    error("S is too large")
else
    pattern = struct('real',[],'img',[]);
    for i = flip(1:length(R))
        pattern(i) = struct('real',R(i),'img',I(i));
    end
    sum_array = [sum(R(S)), sum(I(S))];
    summation = string(sum_array(1)) + ' + ' + string(sum_array(2));
    disp(sum_array)
    disp(summation)

end
