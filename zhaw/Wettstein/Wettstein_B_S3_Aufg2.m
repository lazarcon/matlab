% Wettstein_B_S3_Aufg2(input, B, n)
%
% returns input in normalized floating point representation with the
% mantisse n and base B
%
% sample: Wettstein_B_S3_Aufg2(3.1415,2,23)
%
% will show 3.1415 in its binary representation with a mantisse of 23
% digits
% 
% the sample will return 0,11001001000011100101011e10
% e10 means * B^(10) with 10 in binrary (=2 in decimal)
%


function output =  Wettstein_B_S3_Aufg2(input, B, n)

if(B < 2 || B > 36)
    error('Base B has to be between 2 and 36')
end
signum = sign(input)
input = abs(input);


fixPartDecimal = fix(input);
floatPartDecimal = input - fixPartDecimal;

[fixPart,significantDigits] = fixToBase(fixPartDecimal,B);


floatPart = floatToBase(floatPartDecimal,B,n-significantDigits);


output= normalize(fixPart, floatPart, B, n,signum);
end

function [output] = normalize(fixPart, floatPart,B, n, signum)




exp = length(fixPart);


if(exp == 0)
    
    while(floatPart(1) == '0')
        floatPart = floatPart(2:end);
        exp = exp -1;
    end
end

begin = '0,';
if(signum <0)
    begin = strcat('-',begin);
end

output = strcat(begin, fixPart, floatPart);
limit = min(n+length(begin), length(output));
output = output(1:limit);

% append 0 if too short

while(length(output) <n+length(begin))
    output = strcat(output,'0');
end

exp = expToBase(exp, B);
output = strcat(output,'e',exp);

end

function [output,digits] = fixToBase(input, B)



output = '';
digits = 0;

while(input > 0)
    char = numberToChar(mod(input, B));
    input = fix(input / B);
    output = strcat(char, output);
    digits = digits + 1;
end
end







function output = floatToBase(input, B,limitDigits)



output = '';

counter = 0;
countDigits = false;
while(input  > 0)
    
    result = input * B;
    fixPart = fix(result);
    input = result - fixPart;
    
    
    char = numberToChar(fixPart);
    output = strcat(output, char);
    
    if(fixPart > 0)
        countDigits = true;
    end
    
    
    
    if(countDigits)
        
        counter = counter +1;
        if(counter >= limitDigits)
            input = 0;
        end
        
    end
    
    
    
end
end


function output = numberToChar(input)

if(input < 0 )
    error('input has to be positive')
end



if(input < 10)
    output =  num2str(input);
else
    output =  char('A'+input-10);
end
end



function [output] = expToBase(exp, B)
signum = sign(exp);


exp = abs(exp);
if(exp == 0)
    output = '0';
else
    
    
    output = fixToBase(exp,B);
end

if(signum < 0)
    output = strcat('-',output);
end
end