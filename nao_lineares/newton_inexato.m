%Universidade Federal do Espírito Santo - Ceunes
%Elyabe Alves : Algoritmos Numéricos II
%Método de newton inexato
%retona o vetor aproximação da solução X_k e o número de iterações gastos
%X : vetor inicial
%tol : ordem de tolerância ao erro
% num_max : número máximo de iterações

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