
clf;
m1=40; m2=20; m3=50;
k1=200; k2=100; k3=250; k4=100;
n=1000;
t=linspace(0,100,n);

place=[1 2 3;4 5 6;7 8 9];

A=[-(k1+k2)/m1 k2/m1 0;k2/m2 -(k2+k3)/m2 k3/m2; 0 k3/m3 -(k3+k4)/m3]*-1;
[V,D]=eig(A);

for i=1:3
wi=sqrt(D(i,i));

for c=1:3
X=V(:,c);
x1=X(1)*sin(wi*t);
x2=X(2)*sin(wi*t);
x3=X(3)*sin(wi*t);

num=place(i,c);
figure(num)
plot(t,x1-2.5,t,x2,t,x3+2.5);
axis([0 10 -5 5])

end
end