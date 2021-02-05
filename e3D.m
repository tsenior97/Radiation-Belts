m=1/1842;
q=-1;
B=[0,0,1];
E=[0,0.3,0.3];
g=[0,0,0];
f=@(t,v)[v(4);v(5);v(6);
    q/m*(v(5)*B(3)-v(6)*B(2)+E(1))+g(1);
    q/m*(v(6)*B(1)-v(4)*B(3)+E(2))+g(2);
    q/m*(v(4)*B(2)-v(5)*B(1)+E(3))+g(3)];
opts=odeset('RelTol',1e-13,'AbsTol',1e-15);
[t,va]=ode45(f,[0 2],[0 0 0 1 0 0],opts);
plot(va(:,1),va(:,2))
xlim([0 0.02])
ylim([-0.005457 0.00654])
zlim([-1 0])
xlabel('x')
ylabel('y')
zlabel('z')
grid on