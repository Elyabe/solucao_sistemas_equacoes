%Universidade Federal do Esp�rito Santo - Ceunes
%Elyabe Alves : Algoritmos Num�ricos II
%M�todo de newton exato
%retona o vetor aproxima��o da solu��o X_k e o n�mero de itera��es gastos
%X : vetor inicial
%tol : ordem de toler�ncia ao erro
% num_max : n�mero m�ximo de itera��es
function [ X_k, num_iter ] = newton_exato( X, tol, num_max )
erro = tol;    
X_k = X;
num_iter = 0;
    while ( erro >= tol && num_iter <= num_max )
        W_inv = inv( jacobiana( X_k ) );
        f_xk = f_equacoes( X_k );
        X_k = X_k - W_inv * f_xk;
%         disp( X_k(:));
        erro = norm( X_k - X );
        X = X_k;
        num_iter = num_iter + 1;
    end
end