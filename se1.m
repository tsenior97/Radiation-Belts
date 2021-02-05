m=9.11e-31;
q=10^-9.32;
B=10^-10.48;
omega=abs(q)*B/m;
epsilon=q/abs(q);
v_t=100;
v=100;
r_t=v_t/omega;
t=0:0.1:100;
x_1=r_t*sin(omega*t);
x_2=epsilon*r_t*cos(omega*t);
x_3=v*t;
figure
plot3(x_1,x_2,x_3)
zlim([0 300])

