function [theta, historical_j_values] = gradientDescent(X, y, theta, alpha, iteration_count)
    %GRADIENTDESCENT Performs gradient descent to learn theta
    %   theta = GRADIENTDESCENT(X, y, theta, alpha, iteration_count) updates theta by 
    %   taking iteration_count gradient steps with learning rate alpha

    % Initialize some useful values
    m = length(y); % number of training examples
    historical_j_values = zeros(iteration_count, 1);

    for iteration = 1:iteration_count

        % ====================== YOUR CODE HERE ======================
        % Instructions: Perform a single gradient step on the parameter vector
        %               theta. 
        %
        % Hint: While debugging, it can be useful to print out the values
        %       of the cost function (computeCost) and gradient here.
        %

        theta = theta - alpha / m * (X' * (X * theta - y));

        % ============================================================

        % Save the cost J in every iteration    
        historical_j_values(iteration) = computeCost(X, y, theta);

    end

end
