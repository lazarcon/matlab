function [y, yDiff, yInt] = Lazari_B_S1_Aufg2( koeffizienten, min, max )
%Lazari_B_S1_Aufg2 zeichnet ein Polynom (definiert als Vektor seiner Koeffizienten), 
%seine Ableitung und seine Stammfunktion mit der Konstanten C = 0 
%innerhalb des Inveralls [min,max]
%
%Zurückgegeben werden 3 Vektoren (1. Funktionswerte der Funktion, 2.
%Funktionswerte der Ableitung, 3. Funktionswerte der Stammfunktion im
%gegebenen Interval.
    
    [rows, cols] = size(koeffizienten); % Grösse der Koeffizienten auslesen
    assert(cols > 0, 'Es muss mindestens einen Koeffizienten geben.');
    assert(max > min, 'Der Minimalwert muss kleiner als der Maximalwert des Intervals sein.');
    
    C = 0; % Integrationskonstante
    x = min:0.1:max; % Funktionswerte definieren
    
    y = 0; % Funktionsrückgabe initialisieren
    yDiff = 0; % Ableitungsrückgabe initialisieren
    yInt = 0; % Integrationsrückgabe initialisieren
    
    % Werte berechen 
    for col = 1:cols
        y       = y + koeffizienten(col) * x.^(cols - col);
        yDiff   = yDiff + koeffizienten(col) * (cols - col) * x.^(cols - col - 1);
        yInt    = yInt + koeffizienten(col) / (cols - col + 1) * x.^(cols - col + 1);
    end
    % Integrationskonstante hinzufügen
    yInt = yInt + C;
    
    % Funktionen plotten
    plot(x, y, 'k');
    hold on;
    plot(x, yDiff, 'b');
    plot(x, yInt, 'r');
    xlabel('x');
    ylabel('y');
    grid;
    legend('Funktion', 'Ableitung', 'Stammfunktion');
    hold off;
end

