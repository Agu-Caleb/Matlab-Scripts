% WRITE HERE YOUR FUNCTION FOR EXERCISE 5
%function triangle_areas_calculated = calctrianglearea()
function pointsareas = calctrianglearea(n)
    globalcount=0; 
    [takingsize] = size(n);
    for i = 1:takingsize/3
    vector = n(1:3,:); 
    n(1:3,:)=[];
    
    %taking coordinates
    x1 = vector(1,1);
    y1 = vector(1,2);
    x2 = vector(2,1);
    y2 = vector(2,2);
    x3 = vector(3,1);
    y3 = vector(3,2);
    
    %calculating the distances
    pointa = pdist(x1,y1,x2,y2);
    pointb = pdist(x2,y2,x3,y3);
    pointc = pdist(x3,y3,x1,y1);
    sum = (pointa+pointb+pointc)*0.5;
    globalcount = 1 + globalcount;
    pointsareas = sqrt(sum*(sum-pointa)*(sum-pointb)*(sum-pointc));
    fprintf('The area of triangle is %.2f\n', pointsareas);
    fprintf('Number of triangles calculated is %.2f\n', globalcount);
    end
    
    function lengthofside = pdist(x1,y1,x2,y2)
    lengthofside = sqrt((x1-x2)^2 + (y1-y2)^2);    
    end 

if ~isempty(n)
    disp('The coordinates of unused points:');
    disp(n);
end
fprintf('All traiangles calculated %.2f\n', globalcount);


end


