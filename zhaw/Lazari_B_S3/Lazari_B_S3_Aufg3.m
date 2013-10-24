function nullstellen = Lazari_B_S3_Aufg3(funct, a, b, precision)
%Findet die Nullstellen der Funktion im Interval [a, b] mit der Genauigkeit
%precision mit Hilfe des Bisektionsverfahrens
    
    if(b <= a) 
        error('Der a-Wert muss kleiner als der b-Wert sein');
    end

    MAX_ITERATIONS = 997;
    nullstellen = [];
    stepSize = (b - a) / MAX_ITERATIONS;
    intervalle = a:stepSize:b;
    for(interval = intervalle)
        try
            nullstelle = Lazari_B_S3_bisectionsNullstelle(funct, interval, precision); 
            nullstellen = [nullstellen nullstelle];
        end
    end
end

