
%Oblicz funkcje pochodna trzema metodami i narysuj wykresy: stosujac:
%a) wzor 2 punktowy
%b) wzor 3 punktowy
%c) wzor 5 punktowy

%%%%1. WPROWADZENIE F(X) %%%

clear;
i=0;
endd=10;
step=0.01;
x=i:step:endd; % X nalezy do przedzialu od i do endd , wartosc kroku 0.01
x
y='x.^cos(x)'; %Funkcja badana
Y=inline(y); %Zdefiniowanie obiektu zachowujacego sie jak funkcja

%%% 2. WYKRES %%%
plot(x, Y(x), 'black'); %Nakreslenie wykresu 
hold on; %Nowe obiekty beda dodawane do okna bez usuwania poprzednich

h=0.1;
%Wzor 2-pktowy
y_2pkt=(Y(x+h) - Y(x)) / h;
wartosc1 = y_2pkt(3);

plot(x, y_2pkt, 'cyan');
hold on;

%Wzor 3-pktowy 
y_3pkt=(Y(x+h) - Y(x-h)) / (2*h);
plot(x, y_3pkt, 'yellow');
hold on;

%Wzor 5-pktowy
y_5pkt=(1/(12*h))*(Y(x-(2*h))-8*Y(x - h)+8*Y(x+h)-Y(x+2*h));
plot(x, y_5pkt, 'blue');
hold on;
