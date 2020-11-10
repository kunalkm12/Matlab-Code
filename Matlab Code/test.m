steps = logspace(-1,-16,100);
steps = sort(steps);
x = pi/5;
error = 0.0;
for i = 1:length(steps)
    fdash = (cos(x+steps(i)) - cox(x))/steps(i);
    exact = -1*sin(x);
    error = error + (fdash-exact);
end
loglog(steps,error)