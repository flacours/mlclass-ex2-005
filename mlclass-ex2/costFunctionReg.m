function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


cost = 0;
n = length(theta);
for( i = 1 : m)
  z = theta' * X(i,:)';
  ht = sigmoid(z);
  temp = (-y(i) * log(ht)) - ((1-y(i)) * log(1-ht));
  cost += temp;

  grad = grad + (ht - y(i)) * X(i, :)';

end

% regularisation
total = 0;

for (j = 2 : n)
    total += theta(j)**2;
end
reg = lambda/(2*m) * total;

J = cost / m + reg;

total = 0;

grad = grad / m ;
for (j = 2 : n)
    grad(j) += lambda/m * theta(j);
end








% =============================================================

end
