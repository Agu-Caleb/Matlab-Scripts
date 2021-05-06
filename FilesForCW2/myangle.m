% % WRITE HERE YOUR FUNCTION FOR EXERCISE 6
function angles = myangle(minimum_angle,maximum_angle) 
  % Ensuring the value with the highest number becomes the maximum  
    if minimum_angle>maximum_angle
        difference=maximum_angle;
        maximum_angle=minimum_angle;
        minimum_angle= difference;
    end
     % matrix M of the degrees
        matrix_of_angles = minimum_angle:maximum_angle;
        % converting the matrix to radians
        radians = (matrix_of_angles * pi) / 180 ;
        % passing the output to a different function
        angles=outputfunction(matrix_of_angles,radians);
end

function angles= outputfunction(degree,radians)
    angles=[degree;radians];
end
