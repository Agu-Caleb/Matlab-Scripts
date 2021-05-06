% WRITE YOU CODE HERE
function PCAEx6()
% 1. Loading the data X
load('pcadata.mat');

% 2. Creating a scatter plot of the two colums of x as figure(1)
figure(1);
title("Data Points and their 2 Principal Components");
xmin = 0;
xmax = 7;
ymin = 2;
ymax = 8;
xlim([xmin, xmax]);
ylim([ymin, ymax]);
scatter(X(:,1), X(:,2));

% 3. Calling the substractMean function
task3 = subtractMean(X);

% 4. myPCA for largest and second largest eigenvectors
task4 = myPCA(task3.Xmu);

% 5.  
holder = task4.U+[task3.mu; task3.mu];
x = [holder(1,1), task3.mu(1)];
y = [holder(2,1), task3.mu(2)];
line(x, y,'LineWidth',1,'Color', 'green');
x = [holder(1,2), task3.mu(1)];
y = [holder(2,2), task3.mu(2)];
line(x, y,'LineWidth',1, 'Color', 'red' );
title('Data Points and their 2 Principal Components')
%printing the coordinates of the top eigen vectors
disp(task4.S(:,1))


% 6. calling a function to calculate the dot product between the matrix points and the eigen vectors
task6 = projectData(task3.Xmu, task4.U, 1);



% task 7
disp("The first three points are: ")
disp(task6(1:3, :));

figure(2);
scatter(X(:,1), X(:,2),'b*');
title("Data Points and their construction");
xlim([xmin, xmax]);
ylim([ymin, ymax]);
hold on

Xrec = recoverData(task6, task4.U, 1, task3.mu);
scatter(Xrec(:,1),Xrec(:,2), 'r*');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Part 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% task 2a
%importing the required data
load pcafaces.mat


%% task 2b
% Creating figure 3 with the displayData() function
figure(3)
title("Figure C");
displayData(X(1:100, :))

%% task 2c
task2c = subtractMean(X);

%% task 2d
getU = myPCA(task2c.Xmu);
task2d = projectData(task2c.Xmu, getU.U, 100);

%% task 2e

Xrec = recoverData(task2d, getU.U, 100, task2c.mu);


%% task 2f
figure(4)
% original figure subplot for range
%title("Faculty Members by Department")
subplot(1,2,1),displayData(X(1:100, :)),title("Original Faces");
grid on

% reconstructed image subplot for range
subplot(1,2,2),displayData(Xrec(1:100, :)),title("Recovered Faces");
grid on

end