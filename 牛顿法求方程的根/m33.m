clear
format long
format compact

x=0;%������ֵ
i=0;%��������ͳ��
while i<=100%Ԥ���������
    x0=x-func(x).*((h(x))^(-1));
    if abs(x0-x)>(1/2)*10^(-3)
        x=x0;
    else
        break
    end
    i=i+1;
end
x
i

function z=h(x)
z=exp(x)+10;
end