function [Q,R] = kunalkam_hw5_p4(A)
    [m,n] = size(A);
    V = A;
    R = zeros(n,n);
    for j = 1:n
       x = V(:,j);
       sum = 0;
       for k = 1:length(x)
           sum = sum + (x(k)*x(k));
       end
       sum = sqrt(sum);
       R(j,j) = sum;
       Q(:,j) = V(:,j)/R(j,j); 
       for k = j+1:n
           R(j,k) = transpose(Q(:,j))*V(:,k);
           V(:,k) = V(:,k)-R(j,k)*Q(:,j);
       end
    end
end