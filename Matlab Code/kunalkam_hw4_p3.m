function [timer] = kunalkam_hw4_p3
c = logspace(1,3,100);
sizes = [];
timer = [];
expect = [];
for i = 1:length(c)
    n = round(c(i));
    B = rand(n,n)+n*eye(n);
    tic;
    kunalkam_hw4_p2(B);
    time = toc;
    timer = [timer; time];
    sizes = [sizes; n];
    x = ((c(i)^3)/3)-((c(i)^2)/2)-(c(i)/6);
    expect = [expect; x];
end
loglog(sizes,timer,sizes,expect);
xlabel('Matrix Size')
legend('Time Required','Expected Trend')
ylabel('Time Required')
end
% The graph shows an increase in the time required to 
% calculate the LU factorization, aside from some intial observations,
% for which the time required decreases a bit and then very
% gradually starts increasing. 
% This is a trend I expect to continue long term with respect 
% to the increasing matrix size, but as is clearly visible, it does
% not hold true for small values of n. The reason for this is
% that the time complexity of the LU decomposition algorithm
% probably contains a high power exponential element that overpowers
% the lower power elements if the value of n is high. However for
% lower values of n, the lower power elements are significant
% contributors to the time complexity and therefore they cause the
% trend we observe in lower values of matrix sizes. 