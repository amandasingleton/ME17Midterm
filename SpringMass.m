m1=40; m2=20; m3=50;
k1=200; k2=100; k3=250; k4=100;
n=500;
c=2;
%A=[k1/m1 -k2/m1 0; 0 k2/m2 -k3/m2; k4/m3 k4/m3 (k3/m3)+(k4/m3)];
A=[-(k1+k2)/m1 k2/m1 0;k2/m2 -(k2+k3)/m2 k3/m2; 0 k3/m3 -(k3+k4)/m3];
[V,D]=eig(A);

w1=sqrt(abs(D(1,1)));
w2=sqrt(abs(D(2,2)));
w3=sqrt(abs(D(3,3)));

X=V(:,c);

t=linspace(0,150,n);

x1=X(1)*sin(w1*t);
x2=X(2)*sin(w1*t);
x3=X(3)*sin(w1*t);
% plot(t,x1,t,x2,t,x3);
% axis([0 1 -1 1])

for i=1:n
    hold off
    plot(x1(i)-3,0,'o','MarkerFaceColor','b')
    hold on
    plot(x2(i),0,'o','MarkerFaceColor','r')
    hold on
    plot(x3(i)+3,0,'o','MarkerFaceColor','y')
    axis([-5 5 -1 1])
    pause(0.1)
end