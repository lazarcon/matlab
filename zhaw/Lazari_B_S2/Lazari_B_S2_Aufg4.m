% Aufgabe 4

% Dezimal
delta_D = 1;
myEps_D = 1;
loops_D = 0;
while(delta_D ~= 0)
    myEps_D = myEps_D / 10;
    delta_D = 1 + myEps_D - 1;
    loops_D = loops_D + 1;
end


% Binär
delta_B = 1;
myEps_B = 1;
loops_B = 0;
while(delta_B ~= 0)
   myEps_B = myEps_B / 2;
   delta_B = 1 + myEps_B - 1;
   loops_B = loops_B + 1;
end

if myEps_B == myEps_D
    fprintf('Es kann keine Aussage gemacht werden.\n')
    fprintf('Falls Dual, dann mit %d Stellen.\n', loops_D)
    fprintf('Falls Dezimal, dann mit %d Stellen\n', loops_B)
elseif myEps_B < myEps_D
    fprintf('Es wird im Dualsystem mit %d Stellen gerechnet.\n', loops_B)
else
    fprintf('Es wird im Dezimalsystem mit %d Stellen gerechnet.\n', loops_D)
end