m=1; %normalized mass
q=1; %normalized charge
B=[0,0,1]; %magnetic field 
E=[0,0,0]; %electric field 
g=[0,0,0]; %gravity (non-electromagnetic forces)
f=@(t,v)[v(4);v(5);v(6);
    q/m*(v(5)*B(3)-v(6)*B(2)+E(1))+g(1);
    q/m*(v(6)*B(1)-v(4)*B(3)+E(2))+g(2);
    q/m*(v(4)*B(2)-v(5)*B(1)+E(3))+g(3)];
opts=odeset('RelTol',1e-13,'AbsTol',1e-15);
[t,va]=ode45(f,[0 100],[0 0 0 1 0 0],opts); %initial conditions 
plot(va(:,1),va(:,2))
xlim([-4 4])
ylim([-5 3])
zlim([0 100])
xlabel('x')
ylabel('y')
zlabel('z')
grid on