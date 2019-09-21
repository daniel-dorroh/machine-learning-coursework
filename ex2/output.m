function out = output(partId = '1')
  % Random Test Cases
  X = [ones(20,1) (exp(1) * sin(1:1:20))' (exp(0.5) * cos(1:1:20))'];
  y = sin(X(:,1) + X(:,2)) > 0;
  if partId == '1'
    sigX = sigmoid(X);
    out = sprintf('%0.5f ', sigX);
  elseif partId == '2'
    out = sprintf('%0.5f ', costFunction([0.25 0.5 -0.5]', X, y));
  elseif partId == '3'
    [cost, grad] = costFunction([0.25 0.5 -0.5]', X, y);
    out = sprintf('%0.5f ', grad);
  elseif partId == '4'
    out = sprintf('%0.5f ', predict([0.25 0.5 -0.5]', X));
  elseif partId == '5'
    out = sprintf('%0.5f ', costFunctionReg([0.25 0.5 -0.5]', X, y, 0.1));
  elseif partId == '6'
    [cost, grad] = costFunctionReg([0.25 0.5 -0.5]', X, y, 0.1);
    out = sprintf('%0.5f ', grad);
  end
end