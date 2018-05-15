%Universidade Federal do Esp�rito Santo - Ceunes
%Elyabe Alves : Algoritmos Num�ricos II
%M�todo de newton inexato
%retona o vetor aproxima��o da solu��o X_k e o n�mero de itera��es gastos
%X : vetor inicial
%tol : ordem de toler�ncia ao erro
% num_max : n�mero m�ximo de itera��es

function [ X_k, num_iter ] = newton_inexato( X, tol, num_max )
    W = jacobiana( X );
    num_iter = 0;
    erro = tol;
    X_k = X;
    while ( erro >= tol && num_iter <= num_max)
        Y = f_equacoes( X_k );
        X = X_k;
        X_k = X_k + linsolve(W,-Y);
        S = gauss_jacobi( W, -Y, X, tol );
        X_k = X + S(1);
        num_iter = num_iter + 1;
        erro = norm( X_k - X );
    end
end