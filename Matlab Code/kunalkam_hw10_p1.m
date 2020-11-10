function [l] = kunalkam_hw10_p1(x,i,xList)
    val = 1;
    for j = 1:length(xList)
        if j ~= i
            val = val * ((x - xList(j))/(xList(i)-xList(j)));
        else
    end
    l = val;
end