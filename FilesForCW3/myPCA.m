% WRITE YOU CODE HERE
function PCAoutput= myPCA(x_matrix)
% output is two arguments from eigen vector of the largest and second
% largest value
% columncomponents : a matrix in which the columns are the principal components
% eigenvalues: set of corresponding eigenvalues.
% Calculating the covariance
values = cov(x_matrix);
% Calculating the eigenvalues
[columncomponents, eigenvalues] = eig(values);
% using flipr() for column flipping and arranging the eigen values in
% descending order
PCAoutput = struct("U", fliplr(columncomponents), "S",sort(eigenvalues(:), 'descend'));


end