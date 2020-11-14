%Aproksymacja

%Wprowadzenie wektor�w

x=input('wprowadz wektor x: ');
y=input('wprowadz wektor y: ');

levelWielomianu=input('wprowadz stopien wielomianu aproks:');

%sprawdzenie wymiar�w
if length(x)==length(y)
n=length(x); %dlugosc wektora x
Ksi = zeros(levelWielomianu + 1);

for i=1:n;
    for j=1:levelWielomianu+1;
        for k=1:levelWielomianu+1;
        V(j,k)= x(i).^(j+k-2);
        end
    end
    Ksi = Ksi + V;
end

%Wektor jednokolumnowy
F=zeros(1,levelWielomianu+1);

for i=1:n
    for j=1:levelWielomianu+1
        Fi(j)= x(i)^(j-1)*y(i);
    end
    F=F+Fi;
end

%Transponowanie macierzy (odwrocenie)
F=F';

A=Ksi^(-1)*F;

lengthA=length(A);

xminmax = min(x):0.1:max(x);

w=0;

for i=1:lengthA
   w=w+A(i)*xminmax.^(i -1);
end;

grid on
plot(x,y,'or',xminmax,w);



else 
    disp('Wektory s� r�nej d�ugo�ci')
end
