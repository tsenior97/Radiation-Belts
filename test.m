m=1.6726e-27; %mass of the particle 
q=1.6022e-19; %charge of the particle 
R_E=6370000; %Earth's radius 
B_0=3.15e-5; 
k_0=B_0*(R_E)^3;
E=[0,0,0]; %electric field 
g=[0,0,0]; %gravity (non-electromagnetic forces)
%r=sqrt(x^2+y^2+z^2)
%B_x=(-3k_0xz)/r^5
%B_y=(-3k_0yz)/r^5
%B_z=(k_0/r^5)*(x^2+y^2-2z^2)
f=@(t,v)[v(4);v(5);v(6);
    q/m*(v(5)*((k_0/(sqrt(v(1)^2+v(2)^2+v(3)^2))^5)*(v(1)^2+v(2)^2-2*v(3)^2))-v(6)*((-3*k_0*v(2)*v(3))/(sqrt(v(1)^2+v(2)^2+v(3)^2))^5)+E(1))+g(1);
    q/m*(v(6)*((-3*k_0*v(1)*v(3))/(sqrt(v(1)^2+v(2)^2+v(3)^2))^5)-v(4)*((k_0/(sqrt(v(1)^2+v(2)^2+v(3)^2))^5)*(v(1)^2+v(2)^2-2*v(3)^2))+E(2))+g(2);
    q/m*(v(4)*((-3*k_0*v(2)*v(3))/(sqrt(v(1)^2+v(2)^2+v(3)^2))^5)-v(5)*((-3*k_0*v(1)*v(3))/(sqrt(v(1)^2+v(2)^2+v(3)^2))^5)+E(3))+g(3)];
opts=odeset('RelTol',1e-13,'AbsTol',1e-1);
[t,va]=ode45(f,[0 10],[3*R_E 0 0 2e6 0 1.2e7],opts); %initial conditions for the particle 
plot(va(:,1),va(:,3))
hold on
viscircles([0,0],6370000)
hold off
grid on
title 'Particle in Earth's field'




