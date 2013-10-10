% [y,ydiff,yint] = marcowettstein_3Ib_S1_Aufg2([1,3,2,4,-1],-100,100)
% berechnet und plottet ein polynom mit den koeffizienten a0 = 1, a1 = 3,
% a2= 2, ... sowie dessen Ableitung und Stammfunktion
function [y,ydiff,yint] = marcowettstein_3Ib_S1_Aufg2(a,xmin,xmax)



x = xmin:xmax;

[m,n] = size(a);
n = n -1;

y = 0;
yint = 0;
ydiff = 0;

for i = 0:n
    y = y + a(i+1) * x.^i;
    if(i > 0)
        ydiff = ydiff + a(i+1) * i * x.^(i-1);
    end
    yint = yint + a(i+1) / (i+1) * x.^(i+1);
end

hold on;
plot(x,y, 'Color', 'blue');



plot(x,yint, 'Color', 'green');
plot(x,ydiff, 'Color', 'red');

legend('f(x)', 'F(x)','f''(x)');
grid();
hold off;
