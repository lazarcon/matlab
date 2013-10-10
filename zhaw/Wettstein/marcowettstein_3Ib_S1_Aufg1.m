% marcowettstein_3Ib_S1_Aufg1();
%
x = -10:0.1:10;
f = x.^5 -5 * x.^4 - 30*x.^3 + 110*x.^2 + 29*x -105;
f1 = 5*x.^4 - 20 * x.^3 - 90*x.^2 + 220*x + 29;
F = x.^6 / 6 - x.^5 - 7.5*x.^4 + 110/3*x.^3 + 29/2*x.^2 -105*x;

hold on
grid()
ylim([-500,500])

plot(x,f)

plot(x,f1, 'Color','r')
plot(x,F, 'Color','green')

legend('f(x)','f''(x)', 'F(x)')
xL = xlim;
yL = ylim;
line([0 0], yL, 'LineStyle','--','Color', 'black');  %x-axis
line(xL, [0 0], 'LineStyle','--','Color', 'black');  %y-axis
hold off;

% 
figure()

[x,y] = meshgrid(-3:0.1:3);
g = x .* exp(-x.^2 - y.^2);
surf(x,y,g);


