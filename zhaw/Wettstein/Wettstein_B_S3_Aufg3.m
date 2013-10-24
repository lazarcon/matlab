% findet nullstellen von func im interval zwischen a und b mit der
% angegebenen genauigkeit (tol)
% 
function y = Wettstein_B_S3_Aufg3(func, a, b, tol)

% teile interval in fixe einheiten
% primzahl, damit "krumme" intervalle entstehen, bei ganzzahligen
% interval-schritten und ganzzahligen "Schulbuch-polynomen" können
% nullstellen im resultat teilweise doppelt vorkommen (nämlich dann, wenn
% sie genau an den intervalgrenzen sind)

STEPS = 1373;


stepWidth = (b-a)/STEPS

intervals = a:stepWidth:b;
y = [];
for(i=intervals)
    try
    result = bisec(func, i, i+stepWidth, tol);
    y = [y result];
    end
end

end

function y = bisec(func, a,b, tol)

if(func(a) * func(b) >0)
  error('zwischen a und b muss func ein Vorzeichenwechsel durchlaufen')
end




while(abs(a-b) > tol)
    
    if(func((a + b) / 2) * func(a) <=0)
        b = (a + b) / 2;
    else
        a = (a + b) / 2;
    end
   
    
end

% wähle goldene mitte
y = (a+b)/2;
end

