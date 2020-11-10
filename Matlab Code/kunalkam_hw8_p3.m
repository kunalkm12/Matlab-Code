function [x] = kunalkam_hw8_p3(fdf,x0,tol)
    i = 1; % Iterator
    x = x0;
    flag = 0; % To check if >100 iter
    while i<=100
        [f,j] = fdf(x0);
        x1 = x0 - (j\f);
        if norm(f)<tol
            x = x1;
            flag = 1; % reached convergence in <100 iters
            break
        end
        x0 = x1;
        i = i+1;
    end
    if flag == 0
        error('No convergence after 100 iterations')
    end
end