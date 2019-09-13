function [theta, historical_j_values] = gradientDescentMulti(X, y, theta, alpha, iteration_count)
    %GRADIENTDESCENTMULTI Performs gradient descent to learn theta
    %   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, iteration_count) updates theta by
    %   taking iteration_count gradient steps with learning rate alpha

    [theta, historical_j_values] = gradientDescent(X, y, theta, alpha, iteration_count);

end
