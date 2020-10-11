# univar-lin-reg
Test implementation of univariate linear regression using gradient descent in GNU Octave. 

The main script is script.m, which calls functions defined in loadData.m and gradientDescent.m.
The loadData() function is defined so as to generalize to multivariate linear regression as long as the last column of data represents the outputs. 
The training data that the model trains on is stored in ex1data1.txt and loaded using Octave's native load() function within loadData().
