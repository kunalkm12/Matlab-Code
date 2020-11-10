classic = [];
modified = [];
inbuilt = [];
householder = [];
sizes = [];
for i = 2:11
    A = hilb(i);
    [Q1,R1] = kunalkam_hw5_p3(A);
    [Q2,R2] = kunalkam_hw5_p4(A);
    [Q3,R3] = qr(A);
    [Q4,R4] = kunalkam_hw6_p1(A);
    x1 = norm((transpose(Q1)*Q1)-eye(i));
    x2 = norm((transpose(Q2)*Q2)-eye(i));
    x3 = norm((transpose(Q3)*Q3)-eye(i));
    x4 = norm((transpose(Q4)*Q4)-eye(i));
    classic = [classic; x1];
    modified = [modified; x2];
    inbuilt = [inbuilt; x3];
    householder = [householder; x4];
    sizes = [sizes;i];
end

semilogy(sizes,classic);
hold on
semilogy(sizes,modified);
hold on
semilogy(sizes,inbuilt);
hold on
semilogy(sizes,householder);
legend('Classic Gram Schmidt','Modified Gram Schmidt','Inbuilt QR','Householder Reflector');
xlabel('Matrix size')
ylabel("||Q'*Q - I||")