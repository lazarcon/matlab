function converted = Lazari_B_S3_Aufg2_intToBase(base10, baseNew)
% Rechnet eine ganze Zahl zur Basis 10 in eine ganze Zahl
% zur BasisNew um
    if(fix(base10) ~= base10)
        error('Geht nur fuer ganze Zahlen');
    end
    
        %Vorzeichen
    if(base10 < 0)
        vzBit = 1;
    else
        vzBit = 0;
    end;
    
    converted = [];
    ganz = base10;
    ungeteilt = ganz;
    while ganz ~= 0
        ganz = fix(ungeteilt / baseNew);
        rest = mod(ungeteilt, baseNew);
        ungeteilt = ganz;
        converted = [rest, converted];
    end
    converted = [vzBit, converted];
end