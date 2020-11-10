function [length] = kunalkam_hw2_p1(A,i,j)
    tmp = A;
    length = 0;
    pow = 1;
    while(pow<=20)
        if(A(i,j)>0)
            length = pow;
            break
        elseif(A(i,j)==0)
            A=A*tmp;
        end
        pow = pow+1;
    end
    if(pow>20)
        error("Exceeds path size limit")
    end
end
