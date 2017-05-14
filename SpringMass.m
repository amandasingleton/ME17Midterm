m1=40; m2=20; m3=50;
k1=200; k2=100; k3=250; k4=100;

A=[k1/m1 -k2/m1 0; 0 k2/m2 -k3/m2; k4/m3 k4/m3 (k3/m3)+(k4/m3)];

[V,D]=eig(A);

w1=sqrt(D(1,1));

X=V(:,1);

t=linspace(0,1,250);

x1=X(1)*sin(w1*t*2*pi);
x2=X(2)*sin(w1*t*2*pi);
x3=X(3)*sin(w1*t*2*pi);
% plot(t,x1,t,x2,t,x3);
% axis([0 1 -1 1])

for i=1:250
    hold off
    plot(x1(i)-3,0,'o','MarkerFaceColor','b')
    hold on
    plot(x2(i),0,'o','MarkerFaceColor','r')
    hold on
    plot(x3(i)+3,0,'o','MarkerFaceColor','y')
    axis([-5 5 -1 1])
    pause(0.01)
end