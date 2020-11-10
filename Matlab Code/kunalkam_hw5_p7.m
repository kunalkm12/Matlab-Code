x = [0 1 2 3 4 5 6];
y = [-0.02 1.1 5.0 8.5 17.3 26.1 42];
c = [1;1;1;1;1;1;1];
A = [c transpose(x)];
coef = inv(transpose(A)*A)*transpose(A)*transpose(y);
ya = coef(1)+coef(2)*x;

B = [c transpose(x) transpose(x.^2)];
coef2 = inv(transpose(B)*B)*transpose(B)*transpose(y);
yb = coef2(1)+coef2(2)*x + coef2(3)*x.^2;

err1 = sum(abs(ya - y));
err2 = sum(abs(yb - y));

plot(x,y,'o')
hold on
plot(x,ya)
hold on
plot(x,yb)
legend('Data','Linear','Quadratic')
xlabel('x')
ylabel('y')
hold off