M = [0.7 0.2 0.2 0.1;
     0.1 0.6 0.1 0.1;
     0.1 0.2 0.6 0.1;
     0.1 0.0 0.1 0.7];
p = [0.3;
     0.15;
     0.45;
     0.10];

next = M*p;
next2 = M*next;
fprintf('Probable Outcome of Next Election:\n')
fprintf('Party A: %f\n',next(1))
fprintf('Party B: %f\n',next(2))
fprintf('Party C: %f\n',next(3))
fprintf('Nonvoting: %f\n',next(4))
fprintf('Probable Outcome of Election after the Next:\n')
fprintf('Party A: %f\n',next2(1))
fprintf('Party B: %f\n',next2(2))
fprintf('Party C: %f\n',next2(3))
fprintf('Nonvoting: %f\n',next2(4))

n=1;
while(n<=100)
    p=M*p;
    n=n+1;
end
partya = p(1);
partyc = p(3);
fprintf('Outcome of elections a century from now:\n')
fprintf('Party A: %f\n',partya)
fprintf('Party C: %f\n',partyc)
