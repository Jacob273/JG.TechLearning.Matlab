F=input('Wprowadz funkcje f(x): ', 's');
f=inline(F);

x=-2:0.01:2;

plot(x, f(x), '-b');
hold on;
grid on;

a=input('wprowadz a: ');
b=input('wprowadz b: ');
e=input('wprowadz epsilon: ');

%Bisekcja
iter=0;
while abs(b - a) > e
    xk=(a + b) / 2;
    if(f(xk) < 0)
        b = xk;
    else
        a = xk;
    end
    iter=iter+1;
end

xk = (a + b) / 2;
plot(xk, f(xk), 'ored');
hold on;

NA=sprintf('Bisekcja x0 %f', xk);
NB=sprintf('Bisekcja iteracje %i', iter);
disp(NA);
disp(NB);

%Regula falsi
iter2 = 1;
x1 = ((a * f(b)) - (b * f(a))) / (f(b) - f(a));
while abs(f(x1)) > e
    if f(a) * f(x1) <= 0
        x1 = ((x1 * f(a)) - (a * f(x1))) / (f(a) - f(x1));
    else
        x1 = ((x1 * f(b)) - (b * f(x1))) / (f(b) - f(x1));
    end
        
    iter2 = iter2 + 1;
end

plot(x1, f(x1), '+black');
hold on;

NA=sprintf('falsi x0 %f', x1);
NB=sprintf('falsi iteracje %i', iter2);
disp(NA);
disp(NB);

NA=sprintf('fzero x0 %f', fzero(F, -2));
disp(NA);
