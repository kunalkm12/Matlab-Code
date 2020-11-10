function [Q,R] = kunalkam_hw6_p1(A)
    %Done as per notes alforithm
    [m,n] = size(A);
    R = A;
    Q = eye(m);
    for k = 1:n
        X = R(k:m,k); 
        E = zeros(m-k+1,1);
        E(1) = 1;
        p = sign(X(1,1))*norm(X)*E;
        V = p + X;
        V = V/norm(V);
        x1 = transpose(V)*R(k:m,k:n);
        x2 = transpose(V)*Q(k:m,:);
        R(k:m,k:n) = R(k:m,k:n) - 2*V*x1;
        Q(k:m,:) = Q(k:m,:) - 2*V*x2;
    end
    Q = transpose(Q);
end