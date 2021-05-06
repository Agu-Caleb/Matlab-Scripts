% WRITE YOU CODE HERE
function myplotarea(textfile, n)
%read the file
textcontent = fileread(textfile);
% The format of every line in the file is the letter ‘x’, a space, the x value, a space, the letter ‘y’, space, and the y value.
% To filter out the x and y columns and leave just the two columns with values
filter =regexprep(textcontent, 'x ', '');
filter = regexprep(filter, ' y ', ',');
points_to_plot = str2num(filter);
%disp(points_to_plot)
data_length= length(points_to_plot);

if n > data_length
    fprintf('n must not be greater than %d\n', data_length);
else
%using area(Y)plot of matlab that plots Y against an implicit set of x-coordinates and fills the areas between the curves     
     area(points_to_plot(1:n, 1), points_to_plot(1:n, 2));
     title([num2str(n),' data points'])
     xlabel("x points");
     ylabel("y points");
     
     
end
end