% Berechnet nach dem Algorithmus des Archimedes die Kreiszahl PI (Variante
% 1)

steps = 50;

n = 6;
sn = 1;
x = zeros(1, steps);
y = zeros(1, steps);
fprintf('%15s%15s%15s%15s\n', 'n', 'sn', 'U', 'Delta');
for i = 1:steps
   s2n = sqrt(2 - 2*sqrt(1-sn^2/4));
   u = 2 * n * s2n;
   sn = s2n;   
   x(i) = 2 * n;
   y(i) = u;

   fprintf('%15d\t%15d\t%15f%15f\n',n,sn,u, u - 2 * pi)
   n = 2 * n;
end

figure();
plot(x,y)
semilogx(x, y)
title('PI nach Archimedes (Variante 1)')

% Die Schleife nähert sich erst dem wahren Umfang, steigt dann rasant an
% um schliesslich auf 0 zu fallen.
%
% Ursache: Es wird innerhalb der äusseren Wurzel die schlecht
% konditionierte Subtraktion von zwei sehr ähnlichen Termen verwendet.
% (Wurzel von 1 - fast 1 ist ungefähr 1) Irgendwann (ab n = 805 306 368) 
% berechnet der Computer nur noch die Wurzel von 0 und die ist null.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 6;
sn = 1;
x = zeros(1, steps);
y = zeros(1, steps);
%fprintf('%15s%15s%15s%15s\n', 'n', 'sn', 'U', 'Delta');
for i = 1:steps
   s2n = sqrt(sn^2/(2 * (1 + sqrt(1 - sn^2/4))));
   u = 2 * n * s2n;
   sn = s2n;   
   x(i) = 2 * n;
   y(i) = u;

   %fprintf('%15d\t%15d\t%15f%15f\n',n,sn,u, u - 2 * pi)
   n = 2 * n;
end

figure();
plot(x,y)
semilogx(x, y)
title('PI nach Archimedes (Variante 2)')

% Diese Variante hat das Problem der ersten Aufgabe nicht. Die Kurve nähert
% sich 2 pi asymptotisch an.
