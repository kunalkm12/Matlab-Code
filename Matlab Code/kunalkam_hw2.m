%%%%%%%%%%%%
%%%Problem 6
M = [0.7 0.2 0.2 0.1;
     0.1 0.6 0.1 0.1;
     0.1 0.2 0.6 0.1;
     0.1 0.0 0.1 0.7];
p = [0.3;
     0.15;
     0.45;
     0.10];

next = M*p;
next2 = M*next;
disp(next)
disp(next2)

n=1;
while(n<=100)
    p=M*p;
    n=n+1;
end
disp(p)

%%%%%%%%%%%%
%%%Problem 1
function [length] = kunalkam_hw2_p1(A,i,j)
    temp = A;
    length = 0;
    pow = 1;
    while(pow<=20)
        if(A(i,j)>0)
            length = pow;
            break
        elseif(A(i,j)==0)
            A=A*temp;
        end
        pow = pow+1;
    end
    if(pow>20)
        error("Exceeds path size limit")
    end
end
%%%%%%%%%%%%
%%%Problem 2
function [num] = kunalkam_hw2_p2(A,i,j,n)
    temp = A;
    num = 0;
    pow = 1;
    while(pow<=n)
        num = num+A(i,j);
        pow = pow+1;
        A=A*temp;
    end
end