% WRITE HERE YOUR FUNCTION FOR EXERCISE 1
function waferstore(part_numbers,quantities,costs)
if isequal(size(part_numbers), size(quantities),size(costs))
    parts = struct('partno',part_numbers,'quantity',quantities,'costper',costs);
    parts(1) = struct('partno',part_numbers(1),'quantity',quantities(1),'costper',costs(1));
    parts(2) = struct('partno',part_numbers(2),'quantity',quantities(2),'costper',costs(2));
    parts(3) = struct('partno',part_numbers(3),'quantity',quantities(3),'costper',costs(3));
    disp(parts);
    disp(parts(1));
    disp(parts(2));
    disp(parts(3));
    part1total=[parts(1).partno,parts(1).quantity*parts(1).costper];
    part2total=[parts(2).partno,parts(2).quantity*parts(2).costper];
    part3total=[parts(3).partno,parts(3).quantity*parts(3).costper];
    output= [part1total, part2total,part3total];
    fprintf('%i   %.4f \n', output');
    
else 
     fprintf('Vectors are not equal');
end

