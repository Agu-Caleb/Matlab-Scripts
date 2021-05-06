% WRITE HERE YOUR FUNCTION FOR EXERCISE 4

function chararray = buildrandomstrings(n)
% for n>0 adding additional character.
allcharacters = '';
if n > 0
    chararray = cell(1,n);
    for i = 1:n
        randchar = char(randi([97,122],1,1));
        allcharacters = strcat(allcharacters,randchar);
        chararray{i} = allcharacters;
    end

% for n <0 removing the end character.
elseif n < 0
    
    chararray = cell(1,n*-1);
    for i = 1:n*-1
        randchar = char(randi([97,122],1,1));
        allcharacters = strcat(allcharacters,randchar);
        chararray{i} = allcharacters;
    end
    chararray = flip(chararray);
end
end