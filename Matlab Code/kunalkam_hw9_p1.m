function [x,f] = kunalkam_hw9_p1(fun,x0,tol,maxIter)
    alpha = 0.75;
    i = 1;
    x = x0;
    while i<=maxIter+2
        [f1,g,h] = fun(x0);
        x1 = x0 - alpha*(h\g);
        if norm(g)<tol && i <=maxIter
            x = x1; 
            break
        end
        x0 = x1;
        i = i+1;
    end
    [f,g2,h2] = fun(x);
    if i>maxIter
        error('No convergence after given iterations')
    end
end