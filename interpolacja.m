%interpolacja
clear;
X=input('podaj wektor X: ');
Y=input('podaj wektor Y: ');

n=length(X);

for i = 1:n
    for j = 1:n
        V(i,j)=X(i)^(j-1);
    end;
end;

A=V^(-1)*Y';

x=min(X):0.1:max(X);
w=0;

for i=1:n
   w=w + A(i)*x.^(i -1);
end;

plot(X,Y,'or',x,w);
title('w(x)=');
