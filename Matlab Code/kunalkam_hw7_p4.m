function [l,v] = kunalkam_hw7_p4(A,v0)
    n = size(A); 
    v0 = v0./norm(v0);
    tol = 10^-8; 
    diff = 10^-7; 
    l0 = transpose(v0)*A*v0; 
    k = 1; 
    while diff > tol
        v = (A-l0*eye(n))\v0;
        v = v./norm(v);
        lk = transpose(v)*A*v;
        diff = abs((lk - l0)/lk);
        l0 = lk;
        v0 = v;
        k = k+1;
    end
    l = l0;
end
