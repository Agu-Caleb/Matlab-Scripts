% WRITE YOU CODE HERE
function output = subtractMean(X)
% calculate the mean of data X
mu = mean(X);
% Substracting the mean from the data set
Xmu = X - mu;
output = struct("mu", mu, "Xmu", Xmu);
end