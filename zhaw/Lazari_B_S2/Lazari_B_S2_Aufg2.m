% Aufgabe A:
% 501 Äquidistante Punkte im Interval [1.99, 2.01]
steps = (2.01 - 1.99) / (501 + 1);
x = 1.99:steps:2.01;

f1 = x.^7 - 14 * x.^6 + 84 * x.^5 - 280 * x.^4 + 560 * x.^3 - 672 * x.^2 + 448 * x - 128;
f2 = (x - 2).^7;

figure(1);
plot(x, f1, 'b');
hold on;
plot(x, f2, 'r');
legend('Ausmultipliziert', 'Nicht ausmultipliziert');
hold off;

% Das Interval beginnt kurz vor und endet kurz nach der Nullstelle der
% Funktion. Offensichtlich macht Matlab dort komische Sachen :-)
% Für f2 wird der (x-2) zuerst berechnet. Das führt zu Werten, die nur
% wenig von Null verschieden sind. Im Plot erscheinen diese Punkte dann als
% Gerade auf der x-Achse.
% 
% Bei f1 hingegen kann man den Effekt beobachten, dass Computer Zahlen nur mit
% einer gewissen Genauigkeit darstellen können. Ein Teil der hinteren
% Stellen wird abgeschnitten, oder die Zahl lässt sich gar nicht präzise
% darstellen. In der Summe führt das zu den Sprüngen, die man im Plot
% sieht.


% Aufgabe B: (Konditionierung, Maschinengenauigkeit)
x = -10^-14:10^-17:10^-14;
y = x./(sin(1 + x) - sin(1));
figure(2);
plot(x, y, 'k');
hold on;
% Nein, der Plot zeigt auch eine Lücke. Um den Grenzwert zu berechnen
% müsste die Bernoulli-Regel zum Einsatz kommen.

% Aufgabe C:
y = x / (2.*cos ((2+x)/2) .*sin(x/2));
plot(x, y, 'r');
legend('Original', 'Umgeformt');
hold off;
% Die Original-Funktion oszilliert um den korrekten Wert 1.irgendwas.
% Ursache: Die Subtraktion sehr ähnlicher Zahlen ist schlecht
% konditioniert. Die Multiplikation ist hingegen gut konditioniert.
% Insofern ist die zweite Variante besser.
