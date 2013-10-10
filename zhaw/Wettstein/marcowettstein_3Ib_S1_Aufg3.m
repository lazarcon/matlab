% marcowettstein_3Ib_S1_Aufg3(6)
% berechnet die fakultät von 6
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
% Matlab hat ein default limit für 500 rekursionen, daher schlägt fak(n)
% für n >= 500 fehl
%
% Während die Laufzeit von marcowettstein_3Ib_S1_Aufg3 für grösser werdene n relativ konstant
% bleibt, wächst sie bei der rekursiven variante stark an.
% 
% Beide Algoryhtmen führen die gleiche Anzahl Multiplikationen aus, bei der
% rekursiven variante führen die vielen Funktionsaufrufe (=Sprünge) zu
% Verzögerungen.
% 
% Matlab optimiert diese Rekursionen offenbar nicht oder nur schlecht.
