function  [inBase, fabs, frel] = Lazari_B_S3_Aufg2( base10, baseNew, mantisse )
%Rechnet die Zahl base10 (Zahl zur Basis 10) in eine Zahl zur Basis baseNew
%um. Das Ergebnis (normiert, unter Verwendung einer mantisse-stelligen
%Mantisse) steht in inBase. Der relative Fehler steht in frel, der absolute
%Fehler in fabs

    %Rückgabe-Werte
    inBase = 0;
    fabs = 0;
    frel = 0;

    if(base10 < 0)
        vzBit = 1;
    else
        vzBit = 0;
    end;
    
    % Vorkommaanteil
    stellen = [];
    ganz = fix(base10);
    nachkomma = base10 - ganz;
    
    ungeteilt = ganz;
    rest = 0;
    while ganz ~= 0
        ganz = fix(ungeteilt / baseNew);
        rest = mod(ungeteilt, baseNew);
        fprintf('%10d\t%10d\t%10d\t%10d\n', ungeteilt, baseNew, ganz, rest)
        ungeteilt = ganz;
        stellen = [stellen, rest];
    end
    
    [rows cols] = size(stellen);
    nkCount = 0;
    unmulti = nachkomma;
    % Nachkommanteil
    while cols + nkCount < mantisse & unmulti ~= 0
        ganz = fix(unmulti * baseNew);
        fprintf('%10f\t%10d\t%10d\t%10f\n', unmulti, baseNew, ganz, baseNew - ganz);
        unmulti = unmulti * baseNew - ganz;
        stellen = [ganz, stellen];
        nkCount = nkCount + 1;
    end
    
    % Mit nullen auffüllen:
    
    inBase = stellen;
    fabs = strcat(stellen)
    
end
