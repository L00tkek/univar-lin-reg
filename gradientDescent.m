function theta = gradientDescent(X, theta_init, y, alpha, num_iters)
    theta = theta_init
    for iter = 1:num_iters
        h = X * theta;
        grad = (X' * (h-y)) / size(X, 1);
        theta = theta - alpha * grad;

        %if (iter < 20) %mod(iter, 100) == 0
        %    theta
        %end
    end
end
