function B = kunalkam_hw7_p5(A,p)
    if p>rank(A)
        B = A;
    else
    [u,s,v] = svd(A); % inbuilt svd allowed
    [m,n] = size(s); % we need only the p number of values from s
    dk = 1; % Count of how many we took
    mat = zeros(m,n); % matrix that will have only p values from s, rest all zeros
    for i = 1:m
        for j = 1:n
            if dk>p % if more than p, we don't need to go ahead with it
                break
            end
            if i==j
                dk = dk+1;
                if s(i,i)>=10^-14 % Values lower than 10^-14 to be taken as 0
                    mat(i,i) = s(i,i);
                else
                    mat(i,i) = 0;
                end
            end
        end
    end
    B = u*mat*transpose(v); % Formula
    end
end