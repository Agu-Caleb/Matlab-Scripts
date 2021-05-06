% WRITE YOU CODE HERE

function projectDataoutput = projectData(x_matrix, eigenvectors, positiveint)
% calculating the dot product between the x_matrix points and the vectors
projectDataoutput = x_matrix*eigenvectors(:, 1:positiveint);
end