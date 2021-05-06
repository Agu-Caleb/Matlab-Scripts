% WRITE YOU CODE HERE
function [TF,IDF] =docdistances()
% computes TF-IDF values for the given documents below, then visualise the
% cosine similarities among them.

texts = ["RedRidingHood.txt", "PrincessPea.txt", "Cinderella.txt", "CAFA1.txt", "CAFA2.txt", "CAFA3.txt"];
text_to_sort = [];

% For all the files in texts, extracting all the contents as a character vector.
for index = 1:length(texts)
    extracted_text = fileread(texts(index));
    text_to_sort = strcat(text_to_sort, " ", lower(extracted_text));
end

text = strsplit(text_to_sort);
% to get the number of different words, we can use the unique() function to
% extract one sample of all instances of words in the texts
diction = unique(text);
% Calculating the TF with nested function
TF = nestedTF(diction, texts);
% Calculating the IDF with a nested function
IDF = theidf(diction, texts);
IDF = [IDF,IDF,IDF,IDF,IDF,IDF];
% transpose
TF_IDF = TF.*IDF;
base = TF_IDF'*TF_IDF;
normalised_vector = vecnorm(TF_IDF)'*vecnorm(TF_IDF);
% right divide 
vectors_angle = base./normalised_vector;
% Cosine distance
result = 1 - (vectors_angle);

% using imagesc as suggested to visualize the data and adding the x points
% and y points
imagesc(result);
colormap(gray);
colorbar;
title("Cosine Distance");
xticklabels(["RRH", "PPea", "Cinde", "CAFA1", "CAFA2", "CAFA3"]);
yticklabels(["RRH", "PPea", "Cinde", "CAFA1", "CAFA2", "CAFA3"]);

end
function TF= nestedTF(diction,texts)
      output = zeros(length(diction), length(texts));

for id = 1:length(texts)
    main_text = fileread(texts(id));
    selected_text = (strsplit(main_text));

    for i = 1:length(diction)
        count = 0;
        for all = 1:length(selected_text)
            if strcmp(diction(i), selected_text(all))
                count = count + 1;
            end
            output(i, id) = count;
            TF=output;
        end
    end
end
 end
function IDF = theidf(diction, texts)


result = zeros(length(diction), length(texts));
for vals = 1:length(texts)
    original_text = lower(fileread(texts(vals)));
    text = sort(strsplit(original_text));
    V = unique(text);
    for j = 1:length(diction)
        for index = 1:length(V)
            if strcmp(diction(j), V(index))
                result(j, vals) = 1;
                break
            end
        end
    end
end
% log base 10 of the inverse fraction of the documents that contain the term
result = log10(sum(result, 2)./length(texts));
IDF=result;
end
  