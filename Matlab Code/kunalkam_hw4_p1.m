steps = logspace(-1,-16,100);
steps = sort(steps);
steps
x = (pi/5);
errors = [];
for i = 1:length(steps)
    fdash=(cos(x+steps(i))-cos(x))/steps(i);
    exact = -1*sin(x);
    Err = abs(fdash - exact);
    errors=[errors;Err];
end
loglog(steps,errors)
xlabel('Step size')
ylabel('Error')
% a. The best step size to use for the finite difference
%    as observed from the plot is 5.337 x 10^-9 which gives
%    the lowest observed error value of 4.227 x 10^-9
%
% b. The graph shows a decreasing value of error with a 
%    significant number of downward spikes. However, after a 
%    certain point, precisely mentioned in (a), the error increases
%    uniformly without any spikes. I think that the graph behaves so
%    because there is a limit on the number of digits of a variable,
%    in the sense that there is a lack of precision beyond a certain number
%    of digits. Therefore, uptil the step size mentioned before, the values
%    of our approximation and the exact value are negligibly different due
%    to the difference being of such a magnitude that it doesn't fit into
%    the size of the variable. On the other hand, beyond the point, the
%    error is so significant that it reflects within the range of precision
%    of our variable and therefore the error is significantly visible and
%    only increases as we increase the step size.