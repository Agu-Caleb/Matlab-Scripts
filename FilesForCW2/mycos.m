% WRITE HERE YOUR FUNCTION FOR EXERCISE 3
function mycos(point1,point2)
% all points from -pi to pi
all_point1 = linspace(-pi,pi,point1);
all_point2 = linspace(-pi,pi,point2);
points1_cos = cos(all_point1);
points2_cos = cos(all_point2);
tiledlayout(2,1)

% style menu.
choose_colour = menu("Select colour", "red", "blue", "green");
choose_style = menu("Select style", "circle", "star");
style = ['o','*'];
colour = ['red','blue','g'];

% point one plot.
nexttile
plot(all_point1,points1_cos,strcat(colour(choose_colour),'-',style(choose_style)))
title(string(point1) + ' Points')
grid on 

% point two plot.
nexttile
plot(all_point2,points2_cos,strcat(colour(choose_colour),'-',style(choose_style)))
title(string(point2) + ' Points')
grid on 
end