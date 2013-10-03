function y = Lazari_B_S1_Aufg3_fak(n)
% Berechnet die Fakultät von n rekursiv
    if (n < 0) | (fix(n) ~= n)
        error(['Fakultät ist nur für nicht negative ganze Zahlen definiert.']);
    end

    if n <= 1
        y = 1;
    else
        y = n * Lazari_B_S1_Aufg3_fak(n - 1);
    end
end

