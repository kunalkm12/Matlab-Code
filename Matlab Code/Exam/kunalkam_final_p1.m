function [mu, V] = kunalkam_final_p1(n)
    defv = []; % Stores all values of deflections
    angv = []; % Stores all values of angles
    dm = 0; % Sum of all deflections, later divided by n to get mean
    am = 0; % Sum of all angles, later divided by n to get mean
    for i = 1:n
        Fs = normrnd(1000, 10); % Random number from Gaussian distn with mean 1000 and sd 10 - Sample F 
        Es = normrnd((200*10^9),(2.5*10^9)); % Mean 2x10^11 sd 2.5x10^9 - Sample E
        ds = normrnd(0.01, 0.0005); % Mean 0.01 sd 0.0005 - Sample d
        [d,a] = eas596_final_beamDeflection(Fs, Es, ds);
        dm = dm + d; % Summation of all deflections
        am = am + a; % Summation of all angles
        defv = [defv; d]; % Storing all deflections
        angv = [angv; a]; % Storing all angles
    end
    am = am/n; % Mean of angles
    dm = dm/n; % Mean of deflections
    mu = [dm; am]; % mu as per question
    v11 = 0; % Covariance matrix elements
    v12 = 0; % Initialization
    v22 = 0; 
    for i = 1:n
        v11 = v11 + ((defv(i)-dm)^2); % Covariance formulas
        v12 = v12 + (defv(i)-dm)*(angv(i)-am);
        v22 = v22 + ((angv(i)-am)^2);
    end
    v11 = v11/(n-1); % Normalizing result
    v12 = v12/(n-1);
    v22 = v22/(n-1);
    V = [v11 v12;v12 v22];
end