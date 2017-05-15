m1=40; m2=20; m3=50;
k1=200; k2=100; k3=250; k4=100;
n=1000;
c=2;
%A=[k1/m1 -k2/m1 0; 0 k2/m2 -k3/m2; k4/m3 k4/m3 (k3/m3)+(k4/m3)];
A=[-(k1+k2)/m1 k2/m1 0;k2/m2 -(k2+k3)/m2 k3/m2; 0 k3/m3 -(k3+k4)/m3];
[V,D]=eig(A);

w1=sqrt(abs(D(1,1)));
w2=sqrt(abs(D(2,2)));
w3=sqrt(abs(D(3,3)));

t=linspace(0,100,n);

x1=V(1,1)*sin(w1*t)+V(1,2)*sin(w2*t)+V(1,3)*sin(w3*t);
x2=V(2,1)*sin(w1*t)+V(2,2)*sin(w2*t)+V(2,3)*sin(w3*t);
x3=V(3,1)*sin(w1*t)+V(3,2)*sin(w2*t)+V(3,3)*sin(w3*t);
 plot(t,x1-2.5,t,x2,t,x3+2);
 axis([0 10 -5 5])

% for i=1:n
%     hold off
%     plot(x1(i)-2,0,'o','MarkerFaceColor','b')
%     hold on
%     plot(x2(i),0,'o','MarkerFaceColor','r')
%     hold on
%     plot(x3(i)+2,0,'o','MarkerFaceColor','y')
%     axis([-5 5 -1 1])
%     pause(0.1)
% end