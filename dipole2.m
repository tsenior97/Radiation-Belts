R_E=6370000
B_0=3.15e-5
k_0=B_0*(R_E)^3
lam0=-acos(sqrt(1/1.5)):pi/1000:acos(sqrt(1/1.5));
lam1=-acos(sqrt(1/2)):pi/1000:acos(sqrt(1/2));
lam2=-acos(sqrt(1/3)):pi/1000:acos(sqrt(1/3));
the=0:pi/100:2*pi
r_0=1.5*R_E*cos(lam0).^2
r_1=2*R_E*cos(lam1).^2
r_2=3*R_E*cos(lam2).^2
polarplot(the,R_E+zeros(size(the)),'b')
rlim([0 4*R_E])
thetalim([-90 90])
rticks([0 R_E 1.5*R_E 2*R_E 3*R_E 4*R_E 5*R_E])
rticklabels({'Earth','','1.5L','2L','3L','4L','5L'})
hold on
polarplot(lam0,r_0,'k')
hold on
polarplot(lam1,r_1,'k')
hold on
polarplot(lam2,r_2,'k')
hold on
polarplot([1/3 1/3 1/3; 1 1 1]*R_E*3,'k')
hold off