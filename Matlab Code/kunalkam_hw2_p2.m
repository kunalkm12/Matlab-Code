function [num] = kunalkam_hw2_p2(A,i,j,n)
    tmp = A;
    num = 0;
    pow = 1;
    while(pow<=n)
        num = num+A(i,j);
        pow = pow+1;
        A=A*tmp;
    end
end