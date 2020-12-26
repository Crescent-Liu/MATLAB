n=1;
format long
syms x;
fx=x/(4+x^2);
sym=int(fx,x,0,1);
s=vpa(sym);
for n=1:1:9
    n=n+1
    t=trapezia(0,1,n,'func_ts')
    r=s-t
    hold on
    plot(n,r,'+r')
    xlabel('n')
    ylabel('R')
end
