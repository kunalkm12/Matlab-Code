c = logspace(1,3,100);
sizes = [];
timeclass = [];
timemodi = [];
timeinbuilt = [];
timehouse = [];
expect = [];
for i = 1:length(c)
    n = round(c(i));
    A = rand(n,n);
    
    tic;
    kunalkam_hw5_p3(A);
    time = toc;
    timeclass = [timeclass; time];
    
    tic;
    kunalkam_hw5_p4(A);
    time = toc;
    timemodi = [timemodi; time];
    
    tic;
    qr(A);
    time = toc;
    timeinbuilt = [timeinbuilt; time];
    
    tic;
    kunalkam_hw6_p1(A);
    time = toc;
    timehouse = [timehouse; time];
    
    sizes = [sizes; n];
    x = n^3; % Classical and modified GS - 2mn^2, m=n, thus 2n^3. Householder = 2mn^2 - (2/3)n^3 = (4/3)n^3. All 3 are O(n^3), thus n^3
    expect = [expect; x];
end
loglog(sizes,timeclass)
hold on
loglog(sizes,timemodi)
hold on
loglog(sizes,timeinbuilt)
hold on
loglog(sizes,timehouse)
hold on
loglog(sizes,expect)
xlabel('Matrix Size')
legend('Classical Gram-Schmidt','Modified Gram-Schmidt','Inbuilt QR function','Householder Reflectors','Expected Trend')
ylabel('Time Required')