%用迭代法开方求值
a=input('a=');
g0=a/2;
g1=(g0+a./g0)/2;
for i=0 : 20
%迭代次数越多，精度越高
g0=g1;
g1=(g0+a./g0)/2;
disp(g1);
%%显示每次迭代得到的值
end
disp(g1)