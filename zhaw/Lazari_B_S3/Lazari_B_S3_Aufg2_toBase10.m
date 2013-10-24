function converted = Lazari_B_S3_Aufg2_toBase10(digits, base, mantisse)
% Convertiert eine Zahl mit basis und mantisse in eine Zahl zur Basis 10
   exponent_v = digits(mantisse:end);
   exponent = Lazari_B_S3_Aufg2_convert(exponent_v, base);
   mantisse_v = digits(1:mantisse);
   fprintf('toBase10');
   converted = Lazari_B_S3_Aufg2_convert(mantisse_v, exponent);
end

