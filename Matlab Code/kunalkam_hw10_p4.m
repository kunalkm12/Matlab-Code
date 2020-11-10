h = logspace(-1,-3,100);
h = sort(h);
error = [];
func = @(x) sqrt(1+(x^-2));
pred = h.^4;
cor = sqrt(5)-sqrt(2)+atanh(sqrt(2))-atanh(sqrt(5));
for i = 1:100
    n = round(1/(h(i)));
    approx = kunalkam_hw10_p3(func,1,2,n);
    err = cor - approx;
    error = [error;abs(err)];
end
pred = pred.*10^-2.73;
loglog(h,error,h,pred);
xlabel('h value');
ylabel('Error');
legend('Calculated error','Expected Order of Convergence')