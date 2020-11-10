x01 = [0;0.1]; % Matlab version issue
x02 = [0;-0.1];
r1 = kunalkam_hw8_p3(@kunalkam_hw8_p4,x01,1e-8);
r2 = kunalkam_hw8_p3(@kunalkam_hw8_p4,x02,1e-8);
eas596_hw8_p5(@kunalkam_hw8_p4,x01,r1);
eas596_hw8_p5(@kunalkam_hw8_p4,x02,r2);