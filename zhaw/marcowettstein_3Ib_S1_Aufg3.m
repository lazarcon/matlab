% marcowettstein_3Ib_S1_Aufg3(6)
% berechnet die fakult�t von 6
function y = marcowettstein_3Ib_S1_Aufg3(n)

y = 1;
for i = 1:n
    y = y * i;
end


% >> tic;fak(499);toc
% Elapsed time is 0.008759 seconds.
% >> tic;marcowettstein_3Ib_S1_Aufg3(499);toc
% Elapsed time is 0.000068 seconds.
% 
% Matlab hat ein default limit f�r 500 rekursionen, daher schl�gt fak(n)
% f�r n >= 500 fehl
%
% W�hrend die Laufzeit von marcowettstein_3Ib_S1_Aufg3 f�r gr�sser werdene n relativ konstant
% bleibt, w�chst sie bei der rekursiven variante stark an.
% 
% Beide Algoryhtmen f�hren die gleiche Anzahl Multiplikationen aus, bei der
% rekursiven variante f�hren die vielen Funktionsaufrufe (=Spr�nge) zu
% Verz�gerungen.
% 
% Matlab optimiert diese Rekursionen offenbar nicht oder nur schlecht.
