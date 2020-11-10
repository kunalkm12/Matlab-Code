function [x] = kunalkam_hw8_p1(f,a,b,tol)
    m = (a+b)/2;
    if abs(b-a)<tol % Initial condition
        x = m;
    else
        while true
            m = (a+b)/2;
            if abs(f(m))<tol % Checking this fist since if root is original
                x = m; % (a+b)/2, then checking the other conditions will skew it
                break
            elseif f(a)*f(m)<0
                b = m;
            elseif f(m)*f(b)<0
                a = m;
            end
        end
    end % Done as per video algorithm
end