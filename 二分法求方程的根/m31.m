clear
format compact
format long
a=0;
b=1;
%�趨�������
r=1;
%r=b-a
n=0;
while r>=(1/2)*10^(-3)%�趨����
    n=n+1;
    r=r*1/2;%r=r*���������/2
    ya=func(a);
    c=(a+b)/2;
    yc=func(c);
    if ya*yc<=0
        b=c;
    else
        a=c;
    end
end
n
c
func(c)