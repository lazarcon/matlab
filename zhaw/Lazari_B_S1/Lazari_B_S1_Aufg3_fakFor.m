function y = Lazari_B_S1_Aufg3_fakFor(n)
% Berechnet die Fakultät mittels einer Schleife

    if (n < 0) | (fix(n) ~= n)
        error('Fakultät ist nur für positive ganze Zahlen definiert.');
    end
    
    y = 1;
    for current = 2 : n
        y = y * current;
    end

end

