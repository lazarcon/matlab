function nullstelle = Lazari_B_S3_Aufg3_bisectionsNullstelle(func, a, b, precision)
% Bestimmt, falls vorhanden, die Nullstelle im Interval [a, b] der Funktion
% 
    if(b <= a) 
        error('a muss kleiner sein als b');
    end

    if(func(a) * func(b) > 0)
        error('Kein Vorzeichenwechsel');
    end
    
    while(abs(a - b) > precision)
       mitte = (a + b) / 2;
       if(func(mitte) * func(b) > 0)
           a = mitte;
       else
           b = mitte;
       end
    end
    nullstelle = (a + b) / 2;
end

