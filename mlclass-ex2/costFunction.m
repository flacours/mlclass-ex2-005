function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%

cost = 0;
n = length(theta);
for( i = 1 : m)
  z = theta' * X(i,:)';
  ht = sigmoid(z);
  temp = (-y(i) * log(ht)) - ((1-y(i)) * log(1-ht));
  cost += temp;

  grad = grad + (ht - y(i)) * X(i, :)';

end

J = cost / m;
grad = grad / m;


%for( j = 1 : n)
%  sum = 0;
%  for( i = 1 : m)
%    z = theta(j) * X(i,j);
%    ht = sigmoid(z);%

%    g  = (ht - y(i)) * X(i, j) ;
%    sum += g;
%  end
%  grad(j) = sum/m;
%end


%fprintf("Grad\n");
%disp(grad);



% =============================================================

end
