function converted = Lazari_B_S3_Aufg2_realToBase(base10, baseNew, maxStellen)
% Rechnet den Nachkommanteil einer Zahl zur Basis 10 in eine Zahl
% zur BasisNew um
    converted = [];
    nachkomma = base10 - fix(base10);
    stellen = 0;
    unmulti = nachkomma;
    % Nachkommanteil
    while stellen < maxStellen & unmulti ~= 0
        ganz = fix(unmulti * baseNew);
        unmulti = unmulti * baseNew - ganz;
        converted = [ganz, converted];
        stellen = stellen + 1;
    end
end