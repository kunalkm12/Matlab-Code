function [x] = kunalkam_hw8_p2(f,df,x0,tol)
    i = 1; % Iterator
    flag = 0; % To check if >100 iter
    while i<=100
        x1 = x0-(f(x0))/(df(x0));
        if abs(f(x1))<tol
            flag = 1; % reached convergence in <100 iters
            x = x1;
            break
        end
        x0 = x1; % Not close enough
        i = i+1;
    end
    if flag == 0
        error('No convergence after 100 iterations')
    end
end