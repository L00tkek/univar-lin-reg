file = 'ex1data1.txt';
[X, y] = loadData(file);
alpha = 0.01; 

scatter(X, y);
hold on;

X = [ones(size(X,1), 1), X];

%not bothering with test/validation sets since the data and problem are so small. 
%any cost reduction would be extremely small and not worth the time, and splitting
%the data this way would take up far too much of the training set.

theta_init = rand(size(X, 2), 1); %symmetry breaking

theta = gradientDescent(X, theta_init, y, alpha, 1000) %prints theta and J to terminal
J = sum((X * theta - y) .^ 2) / (2 * size(X, 1))

px1 = (5:25)';
mpx = [ones(size(px1, 1), 1), px1];
plot(px1, mpx * theta); %generate a range from 5-25, then calculate h(x) for each x in that range and plot it
