% WRITE HERE YOUR FUNCTION FOR EXERCISE 9

function [char_frequency , num_occurence] = wordscountstarting(n,c)

%Reading the data
littlemermaid = char(importdata('LittleMermaid.txt')); 
littlemermaid = strrep(littlemermaid,'-',' ');
littlemermaid = strrep(littlemermaid,'''',' ');
littlemermaid = split(littlemermaid);

% looping through fields to select the value that starts with the selected character

temporal_text="";
for i = 1:length(littlemermaid)
    if littlemermaid{i}(1) == c
        temporal_text = append(temporal_text,' ',littlemermaid{i});
    end  
end

%removing empty spaces
temporal_text = strtrim(temporal_text); 
temporal_text = strsplit(temporal_text);

% char_frequency = cell(n,1);
 % for all unique occcurences of char and occuring frequenccy
 [val,count,index]=unique(temporal_text);
 bin=histcounts(index,1:max(count)+1);
 [frequency,occurence]=maxk(bin,n);
  new_text = val(occurence);
% concatenating new_text which starts with c with the number of frequency
 finalsequence="";
 for i = 1:length(new_text)
    frequency=string(frequency);
    filtered_words_n_freq = strcat(new_text(i)+":",strsplit(frequency{i}));
    finalsequence = append(finalsequence,' ',filtered_words_n_freq); 
    
 end
 % trimming white spaces
 finalsequence = strtrim(finalsequence);
 % splitting
 finalsequence = strsplit(finalsequence);
 % assigning final values for function output
 char_frequency = cellstr(finalsequence);
 num_occurence = length(temporal_text);
 
 %disp(num_occurence)
   
end



