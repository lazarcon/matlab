function  [inBase, fabs, frel] = Lazari_B_S3_Aufg2( base10, baseNew, mantisse )
%Rechnet die Zahl base10 (Zahl zur Basis 10) in eine Zahl zur Basis baseNew
%(0-9)um. Das Ergebnis (normiert, unter Verwendung einer mantisse-stelligen
%Mantisse) steht in inBase. Das Ergebnis ist ein Vektor der Form [VZ ZAHL EXPONENT]. 
%Das Vorzeichen ist 0 für positiv, 1, für negativ.
%Die Zahl ist Mantisse Stellen lang, den Schwanz bildet der Exponent
%Der Absolute Fehler steht in fabs, der relative Fehler steht in frel.

    % Check
    if(baseNew < 2)
        error('Eine Basis kleiner als 2 macht keinen Sinn');
    elseif (baseNew > 9)
        error('Diese Funktion funktioniert nicht für Basen > 9');
    end
        
    % 1. Vorkomma Anteil
    vorkomma = Lazari_B_S3_Aufg2_intToBase(base10, baseNew);
    % 2. Nachkomma Anteil
    nachkomma = Lazari_B_S3_Aufg2_realToBase(base10, baseNew,mantisse);
    % 3. Normalisieren
    inBase = Lazari_B_S3_Aufg2_normalize(vorkomma, nachkomma, mantisse, baseNew);
    % 4. Absoluten Fehler bestimmen
    back = Lazari_B_S3_Aufg2_toBase10(inBase, baseNew, mantisse);
    fabs = abs(base10 - back);
    % 5. Relativen Fehler bestimmen
    frel = abs(back - base10)/abs(base10);
end


