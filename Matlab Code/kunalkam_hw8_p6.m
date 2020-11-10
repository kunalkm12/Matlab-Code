x01 = [0;0.1]; % Matlab version issue
x02 = [0;-0.1];
options = optimoptions('fsolve','SpecifyObjectiveGradient', true, 'Display', 'off', 'FunctionTolerance', 1e-8);
r1 = fsolve(@kunalkam_hw8_p4,x01,options);
r2 = fsolve(@kunalkam_hw8_p4,x02,options);
eas596_hw8_p5(@kunalkam_hw8_p4,x01,r1);
eas596_hw8_p5(@kunalkam_hw8_p4,x02,r2);