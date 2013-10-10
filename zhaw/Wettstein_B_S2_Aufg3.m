MAX_N = 2000000000;

n = 6;
s_n = 1;


n_array = [n];
s_array = [n*s_n];

while(n * 2<= MAX_N) 
    
    n = n * 2;
    
    

    s_n = sqrt(2 - 2 * sqrt(1 - s_n^2 / 4))
    n_array = [n_array n];
    s_array = [s_array n*s_n];
    
end

% Plot von n*s_n als funktion von n


semilogx(n_array, s_array)
hold on;

semilogx(n_array, 2*pi ,'-', 'Color','red')

legend('s_n','2*pi')
xlabel('n')
ylabel('Summe der Seitenl�ngen')
hold off;

% Die Iteration n�hert sich bereits nach wenigen Iteration (etwa 4) an 2 *
% pi an.
% ab n=10^8 beginnt sich die Summe der Seitenl�nge von 2*pi wegzubewegen, e
% bis bei ungef�hr n=10^9 ein Maximum von 12 erreicht ist. Bei der n�chsten
% iteration f�llt der Wert auf 0.

% Der Grund ist die Subtraktion in der �usseren Wurzel, welche schlecht
% konditioniert ist, da beide Operanden nah aneinanderliegen. Es kommt zur
% Ausl�schung. Der Term wird irgendwann 0. Erstaunlich ist eher, dass die
% Iteration sich zuerst an 12 ann�hrert. 


% b)

n = 6;
s_n = 1;


n_array = [n];
s_array = [n*s_n];

while(n * 2<= MAX_N) 
    
    n = n * 2;
    
    

    s_n = sqrt(s_n^2 /(2*(1+sqrt(1-s_n^2/4))))
    n_array = [n_array n];
    s_array = [s_array n*s_n];
    
end


% Plot von n*s_n als funktion von n

figure();
semilogx(n_array, s_array)
hold on;

semilogx(n_array, 2*pi ,'-', 'Color','red')

legend('s_n','2*pi')
xlabel('n')
ylabel('Summe der Seitenl�ngen')
hold off;

% diese Variante zeigt keinen Sprung und stagniert bei ungef�hr 2*pi
