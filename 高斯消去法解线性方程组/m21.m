clear
format long
format compact
A1=[0.3*10^(-15) 59.14 3 1;5.291 -6.130 -1 2;11.2 9 5 2;1 2 1 1];
b1=[59.17;46.78;1;2];
C1=cond(A1,1)
%A1矩阵1范数下的条件数
C2=cond(A1,2)
%A1矩阵2范数下的条件数
C3=cond(A1,inf)
%A1矩阵无穷范数下的条件数

%列主元消去法
n=4;
for k=1:n-1
    a=max(abs(A1(k:n,k)));
    if a==0
        return
    end
    for i=k:n
        if abs(A1(i,k))==a
            y=A1(i,:);
            A1(i,:)=A1(k,:);
            A1(k,:)=y;
            x=b1(i,:);
            b1(i,:)=b1(k,:);
            b1(k,:)=x;
            break
        end
    end
    if A1(k,k)~=0
    A1(k+1:n,k)=A1(k+1:n,k)/A1(k,k);
    A1(k+1:n,k+1:n)=A1(k+1:n,k+1:n)-A1(k+1:n,k)*A1(k,k+1:n);
    else
        break
    end
end
L=tril(A1,0);
for i=1:n
    L(i,i)=1;
end
L
U=triu(A1,0)
y1=L\b1;
x1=U\y1
