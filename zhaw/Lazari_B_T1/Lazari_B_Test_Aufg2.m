% Grafik Skript gemäss Test
x = -5:0.1:5;
subplot(2, 2, 1), plot(x, exp(x));
x = -10:0.1:10;
f = polyval([1,3,3,1,1],x); 
subplot(2, 2, 2), plot(x, f);
x = -2*pi:0.1:2*pi;
g = sin(x);
h = cos(x);
subplot(2, 2, 3), plot(x, g);
hold on;
plot(x, h);
hold off;
x = -3:01:3;
norm = exp(-x.*x);
subplot(2, 2, 4), bar(x,norm);