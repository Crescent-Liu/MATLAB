clear
format long
format compact
A1=[0.3*10^(-15) 59.14 3 1;5.291 -6.130 -1 2;11.2 9 5 2;1 2 1 1];
b1=[59.17;46.78;1;2];

%不选主元的高斯消去法
[L,U]=lu(A1)
y1=L\b1;
x1=U\y1