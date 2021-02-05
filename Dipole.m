R_E=6370000;
B_0=3.15e-5;
k_0=B_0*(R_E)^3;
lam0=-acos(sqrt(1/1.5)):pi/1000:acos(sqrt(1/1.5));
lam1=-acos(sqrt(1/1.5))+pi:pi/1000:acos(sqrt(1/1.5))+pi;
lam2=-acos(sqrt(1/2)):pi/1000:acos(sqrt(1/2));
lam3=-acos(sqrt(1/2))+pi:pi/1000:acos(sqrt(1/2))+pi;
lam4=-acos(sqrt(1/3)):pi/1000:acos(sqrt(1/3));
lam5=-acos(sqrt(1/3))+pi:pi/1000:acos(sqrt(1/3))+pi;
lam6=-acos(sqrt(1/4)):pi/1000:acos(sqrt(1/4));
lam7=-acos(sqrt(1/4))+pi:pi/1000:acos(sqrt(1/4))+pi;
lam8=-acos(sqrt(1/5)):pi/1000:acos(sqrt(1/5));
lam9=-acos(sqrt(1/5))+pi:pi/1000:acos(sqrt(1/5))+pi;
the=0:pi/100:2*pi;
r_0=1.5*R_E*cos(lam0).^2;
r_1=1.5*R_E*cos(lam1).^2;
r_2=2*R_E*cos(lam2).^2;
r_3=2*R_E*cos(lam3).^2;
r_4=3*R_E*cos(lam4).^2;
r_5=3*R_E*cos(lam5).^2;
r_6=4*R_E*cos(lam6).^2;
r_7=4*R_E*cos(lam7).^2;
r_8=5*R_E*cos(lam8).^2;
r_9=5*R_E*cos(lam9).^2;
polarplot(the,R_E+zeros(size(the)),'b')
rlim([0 6*R_E])
rticks([0 R_E 1.5*R_E 2*R_E 3*R_E 4*R_E 5*R_E])
thetaticks(0:45:360)
rticklabels({'Earth','','1.5L','2L','3L','4L','5L'})
hold on
polarplot(lam0,r_0,'r')
hold on
polarplot(lam1,r_1,'r')
hold on
polarplot(lam2,r_2,'g')
hold on
polarplot(lam3,r_3,'g')
hold on
polarplot(lam4,r_4,'c')
hold on
polarplot(lam5,r_5,'c')
hold on
polarplot(lam6,r_6,'m')
hold on
polarplot(lam7,r_7,'m')
hold on
polarplot(lam8,r_8,'k')
hold on
polarplot(lam9,r_9,'k')
hold off
ax = gca;
d =ax.ThetaGrid;
ax.ThetaGrid = 'on'
ax.GridAlpha = 0.5
ax.GridLineStyle = ':';
ax.ThetaAxisUnits = 'radians';
ax.FontSize = 10;




