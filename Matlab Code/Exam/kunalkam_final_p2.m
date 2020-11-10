function [scores, L] = kunalkam_final_p2()
    load('CityData.mat'); % Loading data
    m = 9; % No of categories
    N = 250; % No of observations
    %m = 3; % Used example in notes to test
    %N = 4; % if code was correct
    %ratings = [90 70 90; 80 80 75; 70 80 80; 75 70 75];
    
    % Determining mean of each piece of data
    means = zeros(1,m); % List to store means of each category
    for i = 1:N
        for j = 1:m
            means(1,j) = means(1,j) + ratings(i,j); % Summation of all ratings
        end
    end
    for i = 1:m
        means(1,i) = means(1,i)/N; % Dividing sums by N to get means
    end
    
    % Centering the data
    centered = zeros(N,m);
    for i = 1:N
        for j = 1:m
            centered(i,j) = ratings(i,j) - means(1,j);
        end
    end
    
    % Computing Covariance matrix for data
    V = zeros(m,m); % Initialization
    for i = 1:m
        for j = 1:m
            val = 0; % This variable is sigma(mp) -> summation of mi*pi/N-1
            for k = 1:N
                val = val + centered(k,i)*centered(k,j); % Just the summation part of mi*pi
            end
            val = val/(N-1); % Dividing the entire summation by N-1
            V(i,j) = val; % Assigning value to matrix
        end
    end
    
    % Calculating eigenvalues and eigenvectors of V
    [evec,eval] = eigs(V,m); % By default only top 6 eigenvalues/vectors are displayed, hence specifying m
    
    % Ordering eigenvalues in vector L. Already sorted in matrix eval
    L = []; 
    for i = 1:m
        L = [L; eval(i,i)]; % eval is diagonalmatrix with eigenvalues
    end
    
    % Calculating the scores D*Q, D -> centered data
    scores = centered*evec;
end