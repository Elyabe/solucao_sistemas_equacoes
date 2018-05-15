%Universidade Federal do Esp�rito Santo - Ceunes
%Elyabe Alves : Algoritmos Num�ricos II
%epsilon_1 : toler�ncia do erro
%numero m�ximo de itera��es: Para caso n�o convergir
%X_0: Vetor inicial

epsilon_1 = 1e-2;
num_max_iter = 200
X_0 = [ 1; 1 ];
%   X_0 = zeros(3,1);

[S_1, num_iter(1)] = newton_exato( X_0, epsilon_1, num_max_iter );
[S_2, num_iter(2)] = newton_inexato( X_0, epsilon_1, num_max_iter );

S_1
S_2

num_iter(:)
