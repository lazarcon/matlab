% 4.1.a Nullstellen

f = @(x) 230/221*x^4 + 18/221*x^3 + 9/221*x^2 - 9/221;

% starting value
xstart = 0.1;

% count the iterations, setting a maximum in maxiter, here 25
iter = 0;
maxiter = 25;

% initialize the array to store our iterations
xArray = NaN(1,maxiter);

% convergence tolerance
xtol = 1e-6;

% before we start, the error is set to be BIG. this
% just lets our while loop get through that first iteration
xerr = inf;

% the while will stop if either criterion fails
while (iter < maxiter) && (xerr > xtol)
  iter = iter + 1;
  xnew = f(xstart);

  % save each iteration
  xArray(iter) = xnew;

  % compute the difference between successive iterations
  xerr = abs(xnew - xstart);

  xstart = xnew;
end
% retain only the elements of xArray that we actually generated
xArray = xArray(1:iter);

plot(xArray);
fprintf('%15.8e\n',xArray);