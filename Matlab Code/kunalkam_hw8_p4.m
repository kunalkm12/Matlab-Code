function [f,J] = kunalkam_hw8_p4(x)
    %solved sequentially as per problem solved in lecture
    x1 = x(1);
    x2 = x(2);
    f1 = (x1*x1)+(x2*x2)-0.75;
    f2 = sin(x1*pi)-(x2*x2*x2);
    fx0 = [f1;f2];
    j11 = 2*x1; % Calculated derivative by hand, not sure if allowed
    j12 = 2*x2; 
    j21 = pi*cos(pi*x1);
    j22 = -3*x2*x2;
    J = [j11 j12;
         j21 j22];
    f = fx0;
end