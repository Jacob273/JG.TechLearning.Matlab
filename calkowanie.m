%calkowanie numeryczne

clear;
e=10;
b=0;
skok=0.01;
% x nalezy do przedzialu b(beginning) e(end) o kroku - skok
x=b:skok:e;
%funkcja badana
Y='x.^cos(x)';
y=inline(Y);

plot(x, y(x));
hold on;
%pochodna obliczona analitycznie - wykres kolor czarny
Y1='(x.^cos(x)).*(cos(x)./x-sin(x).*log(x))';
y1=inline(Y1);
plot(x, y1(x),'black');
hold on;

%metoda prostokatow
%n - ilosc elementow na ktore dzielimy przedzial <b,e> im n wieksze tym
%wiecej przedzialow - wieksza dokladnosc obliczen
n=100;
disp('ilosc elementow na ktory zostal podzielony przedzial: ')
n
%dx - dlugosc podstawy 1 elementu po podziale odcinka na n elementow
dx=(e-b)/n;
%poczatkowa wartosc metody prostokatow
mp=0;


%mp- calka metoda prostokatow
disp('calkowanie - metoda prostokatow');

for i=b:dx:e
mp=mp+y(i)*dx;
end
mp

%mt- calka metoda trapezow
disp('calkowanie - metoda trapezow');
suma=0;
k=e-dx;
%i nalezy do przedzialu (b,e)
for i=dx:dx:k
    suma=suma+y(i);
end
mt=dx*(y(b)/2+suma+y(e)/2);
mt

%ms - calka metoda parabol(Simpsona)
disp('calkowanie - metoda parabol');
a=dx:2*dx:e-dx;
c=2*dx:2*dx:e-2*dx;
drugi_element=0;
for a=dx:2*dx:e-dx
    drugi_element=drugi_element+y(a);
end
trzeci_element=0;
for c=2*dx:2*dx:e-2*dx;
    trzeci_element=trzeci_element+y(c);
end
ms=(y(b)+4*drugi_element+2*trzeci_element+y(e))*dx/3;
ms

%mw - calka metoda z matlaba
disp('calkowanie - metoda quad z biblioteki matlaba');
mzm=quad(y, 0, 10)
    








