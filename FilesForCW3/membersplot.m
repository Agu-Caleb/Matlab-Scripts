% WRITE YOU CODE HERE
function membersplot(type_1, type_2)
% Takes two arguments ehich are graph type from three possible graph types
% and makes sub plots of the data with the graph types chosen
point_labels = {'ME', 'BM', 'CE', 'EE'};
all_points = [22,45,23,33];
points_range = 1:4;
graph_types={'bar', 'barh', 'pie'};
% formatting the user inputs to correspond with the required types
valid_type_1 = find(strcmp(graph_types, type_1), 1);
valid_type_2 = find(strcmp(graph_types, type_2), 1);
if (~isempty(valid_type_1) && ~isempty(valid_type_2))
    if (valid_type_1==1 && valid_type_2==1)
        plot_type = 1;
    elseif (valid_type_1==1 && valid_type_2==2)
        plot_type = 2;
    elseif (valid_type_1==1 && valid_type_2==3)
        plot_type = 3;
    elseif (valid_type_1==2 && valid_type_2==2)
        plot_type = 4;
    elseif (valid_type_1==2 && valid_type_2==1)
        plot_type = 5;
    elseif (valid_type_1==2 && valid_type_2==3)
        plot_type = 6;
    elseif (valid_type_1==3 && valid_type_2==3)
        plot_type = 7;
    elseif (valid_type_1==3 && valid_type_2==1)
        plot_type = 8;
    elseif (valid_type_1==3 && valid_type_2==2)
        plot_type = 9;
    end
else 
    disp("Invalid plot types inputted")
    plot_type = 0;
end
% making the subplots based on combinations selected
switch plot_type
    case 1
        subplot(1,2,1);
        bar(points_range, all_points)
        set(gca, 'xticklabel', point_labels)
        xlabel("Departments");
        ylabel("Number of Faculty Members");
        grid on
        subplot(1,2,2);
        bar(points_range, all_points)
        set(gca, 'xticklabel', point_labels)
        xlabel("Departments");
        ylabel("Number of Faculty Members");
        grid on
        
    case 2
        subplot(1,2,1);
        bar(points_range, all_points)
        set(gca, 'xticklabel', point_labels)
        xlabel("Departments");
        ylabel("Number of Faculty Members");
        grid on
        subplot(1,2,2);
        barh(points_range, all_points)
        xlabel("Number of Faculty Members")
        ylabel("Department")
        set(gca, 'yticklabel', point_labels)
        grid on
        
       case 3
        subplot(1,2,1);
        bar(points_range, all_points)
        set(gca, 'xticklabel', point_labels)
        xlabel("Departments");
        ylabel("Number of Faculty Members");
        grid on
        subplot(1,2,2);
        pie(all_points, point_labels)
        title("Faculty Members by Department")
        grid on
        
       case 4
        subplot(1,2,1);
        barh(points_range, all_points)
        xlabel("Number of Faculty Members")
        ylabel("Departments")
        set(gca, 'yticklabel', point_labels)
        grid on
        subplot(1,2,2);
        barh(points_range, all_points)
        set(gca, 'xticklabel', point_labels)
        xlabel("Departments");
        ylabel("Number of Faculty Members");
        grid on
        
       case 5
        subplot(1,2,1);
        barh(points_range, all_points)
        xlabel("Number of Faculty Members")
        ylabel("Departments")
        set(gca, 'yticklabel', point_labels)
        grid on
        subplot(1,2,2);
        bar(points_range, all_points)
        set(gca, 'xticklabel', point_labels)
        xlabel("Departments");
        ylabel("Number of Faculty Members");
        grid on
        
      case 6
        subplot(1,2,1);
        barh(points_range, all_points)
        xlabel("Number of Faculty Members")
        ylabel("Departments")
        set(gca, 'yticklabel', point_labels)
        grid on
        subplot(1,2,2);
        pie(all_points, point_labels)
        title("Faculty Members by Department")
        grid on
        
      case 7
        subplot(1,2,1);
        pie(all_points, point_labels)
        title("Faculty Members by Department")
        grid on
        subplot(1,2,2);
        pie(all_points, point_labels)
        title("Faculty Members by Department")
        grid on
     
     case 8
        subplot(1,2,1);
        pie(all_points, point_labels)
        title("Faculty Members by Department")
        grid on
        subplot(1,2,2);
        bar(points_range, all_points)
        set(gca, 'xticklabel', point_labels)
        xlabel("Departments");
        ylabel("Number of Faculty Members");
        grid on
        
    case 9
        subplot(1,2,1);
        pie(all_points, point_labels)
        title("Faculty Members by Department")
        grid on
        subplot(1,2,2);
        barh(points_range, all_points)
        xlabel("Number of Faculty Members")
        ylabel("Departments")
        set(gca, 'yticklabel', point_labels)
        grid on
    otherwise
        disp('Must select two of bar, barh and pie!')
end
