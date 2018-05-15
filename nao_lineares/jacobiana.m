%Universidade Federal do Esp�rito Santo - Ceunes
%Elyabe Alves : Algoritmos Num�ricos II
% Retorna matriz jacobiana aplicada ao ponto X
function W = jacobiana(X)
    W = [ 2*X(1,1)-4  2*X(2,1);
        2*X(1,1)*X(2,1)+4*X(1,1)+1   X(1,1)^2]; 
end

