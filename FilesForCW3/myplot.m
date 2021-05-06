% WRITE YOU CODE HERE
function myplot(first_vector,second_vector)

load('plot_properties.mat');
%I could have avoided the loop by picking the properties at index 1-3 for
%the plots but that would mean explictly choosing the plot type by looking
%at the data, i feel like the most dynamic method should be with a loop
for index=1:length(plot_properties)
    plot_type = plot_properties(index).plottype;
    if (strcmp(plot_type,'plot'))
    subplot(3,1,1);
    plot( first_vector, second_vector, [plot_properties(index).plotproperties.Color plot_properties(index).plotproperties.LineStyle], "LineWidth", plot_properties(index).plotproperties.LineWidth);
    grid on
    
    elseif (strcmp(plot_type,'bar'))
    subplot(3,1,2);
    bar(first_vector, second_vector, "FaceColor", plot_properties(index).plotproperties.FaceColor, "EdgeColor", plot_properties(index).plotproperties.EdgeColor, "BarWidth", plot_properties(index).plotproperties.BarWidth);
    grid on

    elseif (strcmp(plot_type,'barh'))
    subplot(3,1,3);
    barh(first_vector, second_vector, "FaceColor", plot_properties(index).plotproperties.FaceColor, "EdgeColor", plot_properties(index).plotproperties.EdgeColor, "BarWidth", plot_properties(index).plotproperties.BarWidth);
    xlim([-1,1]);
    ylim([-10,10]);
    grid on
    end
end
end