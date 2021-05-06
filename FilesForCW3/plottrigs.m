% WRITE YOU CODE HERE
function plottrigs(varargin)
possible_colours= {'y','m','c','r','g','b','w','k'};
plot_colour='';
thickness= 0;
all_symbols= {'+','o','*','.','x','s','d','p','^','v','>','<'};
marker_symbol='';
the_type='';

switch nargin
    case 1
        the_type    = varargin{1};
        plot_colour     = "k";
        thickness = 1.0;
        marker_symbol     = ".";
    case 2
        the_type    = varargin{1};
        plot_colour     = varargin{2};
        thickness = 1.0;
        marker_symbol     = ".";
    case 3
        the_type    = varargin{1};
        plot_colour     = varargin{2};
        thickness = varargin{3};
        marker_symbol     = ".";
    case 4
        the_type    = varargin{1};
        plot_colour     = varargin{2};
        thickness = varargin{3};
        marker_symbol     = varargin{4};
end



matches_color = strfind(possible_colours,plot_colour);
color_exists = any(vertcat(matches_color{:}));
matches_symbol = strfind(all_symbols,marker_symbol);
symbol_exists = any(vertcat(matches_symbol{:}));
line = strcat("-", plot_colour, marker_symbol);
plotrange = -2*pi:0.1:2*pi;

switch the_type
    case "sin"
       
        if ((color_exists)==1 && (symbol_exists)==1 && thickness>0) 
        plot(sin(plotrange), line, "LineWidth", thickness);
        holder = strcat(int2str(nargin), " input arguments");
        xlabel("x");
        ylabel(strcat(the_type,'(x)'));
        title(holder);
        grid on
        else
            disp('Inputted colour,symbol or line width is not valid, enter valid arguments or leave blank')
        end
    case "cos"
        

        if ((color_exists)==1 && (symbol_exists)==1 && thickness>0) 
        plot(cos(plotrange), line, "LineWidth", thickness);
        holder = strcat(int2str(nargin), " input arguments");
        xlabel("x");
        ylabel(strcat(the_type,'(x)'));
        title(holder);
        grid on
        else
            disp('Inputted colour,symbol or line width is not valid, enter valid arguments or leave blank')
        end
    otherwise
        fprintf("First argument must be valid for either sin or cos, enter either sin or cos\n");

end
    