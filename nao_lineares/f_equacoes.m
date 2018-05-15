% Vetor F(X) = [ eq1(X) eq2(X) eq3(X) ]
% Elyabe Alves
function F = f_equacoes( X )
    F = [ X(1,1)^2 - 4*X(1,1) + X(2,1)^2;
        (X(1,1)^2)*X(2,1) + 2*X(1,1)^2 + 1];
end