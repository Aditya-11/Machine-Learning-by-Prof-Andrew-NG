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

[J,grad] = costFunction(theta,X,y)
% theata0 shoulld be ignored and theta1 should start from theta 1
i=1;
j = i+1;
%theta1 = zeros([length(theta)-1],1);
%for i=1:m
theta1 = [0; theta(2:length(theta));];
%theta1(i,1) = theta(j,1);
%end
J = J + lambda/(2*m) * sum(theta1.^2);
n = length(theta);
%for i=1:n
%grad(i,1) = grad(i,1) .+ (1/m) * theta1(i);


% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
