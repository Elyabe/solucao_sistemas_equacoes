%Universidade Federal do Espírito Santo - Ceunes
%Elyabe Alves : Algoritmos Numéricos II
%Método de newton exato
%retona o vetor aproximação da solução X_k e o número de iterações gastos
%X : vetor inicial
%tol : ordem de tolerância ao erro
% num_max : número máximo de iterações
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