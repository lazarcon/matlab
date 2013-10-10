% Berechnet die Maschinengenauigkeit
function [eps_] = Wettstein_B_S2_Aufg4()


result = 1;
eps_ = 1;
while(result ~=0)
    eps_ = eps_ / 2;
    result = 1 + eps_ -1;
  
end
% previous eps was correct
eps_ = 2*eps_