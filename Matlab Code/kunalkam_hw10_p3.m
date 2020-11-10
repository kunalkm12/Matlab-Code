function [val] = kunalkam_hw10_p3(f, a, b, n)
    h = (b-a)/n;
    tempa = a;
    sum = 0;
    for i = 1:n
        x1 = tempa;
        x3 = x1+h;
        x2 = (x1+x3)/2;
        sum = sum + ((x3-x1)/6)*(f(x1)+(4*f(x2))+f(x3));
        tempa = x3;
    end
    val = sum;
end