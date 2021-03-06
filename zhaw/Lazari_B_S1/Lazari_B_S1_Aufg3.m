% Aufgabe 3 -- Zeitvergleich zwischen Rekursiver und For-Schleifen Fakultät

n = 100; % Initialwert für Vergleich

t1 = tic;
Lazari_B_S1_Aufg3_fak(n);
t_rekursiv = toc(t1);

t2 = tic;
Lazari_B_S1_Aufg3_fakFor(n);
t_for = toc(t2);

fprintf('Rekursiv (n = %i ) benötigt %d Zeiteinheiten.\n', n, t_rekursiv);
fprintf('For (n = %i) benötigt %d Zeitheinheiten.\n', n, t_for);
if (t_rekursiv < t_for)
    fprintf('Es gewinnt die rekursive Variante. Sie ist %d Zeiteinheiten schneller\n', t_rekursiv - t_for);
else
    fprintf('Es gewinnt die for Variante. Sie ist %d Zeiteinheiten schneller.\n', t_for - t_rekursiv);
end

% Es gewinnt die Schleifen-Variante.
% Dies wohl, weil sich der Computer bei der Rekursive Variante alle
% Zwischenergebnisse bzw. unvollendete Instanzen quasi merken muss.
% Ab 32 oder 64 Iterationen dürften dafür nicht mehr genügend
% Register zur Verfügung stehen, und es muss in den Speicher ausgelagert
% werden, was Zeit kostet.
% Die Schleifen-Variante kommt mit 3 Variablen (Eingabe, Position, Wert) aus.
% Es werden also auf Hardware-Ebene keine Speicherzugriffe benötigt,
% Somit läuft der Prozess schneller.
