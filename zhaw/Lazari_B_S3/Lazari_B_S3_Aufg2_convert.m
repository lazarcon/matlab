function converted = Lazari_B_S3_Aufg2_convert(digits, base)
% Convertiert die ziffern um
    sign = digits(1);
    [void cols] = size(digits);
    index = 2;
    converted = 0;
    while(index <= cols) 
        multiplier = base ^ (cols - index);
        if(sign == 1)
            multiplier = -multiplier;
        end
        converted = converted + digits(index) * multiplier;
        index = index + 1;
    end
    fprintf('convert');
end