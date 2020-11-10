function [Q,R] = kunalkam_hw5_p3(A)
    [m,n] = size(A);
    Q = A;
    R = zeros(n,n);
    for i = 1:n
       for j = 1:i-1
           R(j,i) = transpose(Q(:,j))*A(:,i);
           Q(:,i) = Q(:,i)-R(j,i)*Q(:,j);
       end
       sum = 0;
       x = Q(:,i);
       for k = 1:length(x)
           sum = sum + (x(k)*x(k));
       end
       sum = sqrt(sum);
       R(i,i) = sum;
       Q(:,i)=Q(:,i)/R(i,i);
    end
end