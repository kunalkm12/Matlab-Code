function [f] = kunalkam_hw10_p2(L, x, xList, yList)
    sum = 0;
    for i = 1:length(xList)
        sum = sum + yList(i)*L(x,i,xList);
    end
    f = sum;
end