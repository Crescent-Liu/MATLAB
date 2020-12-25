x=[1:1:19];
y=[0.898 2.38 3.07 1.84 2.02 1.94 2.22 2.77 4.02 4.76 5.46 6.53 10.9 16.5 22.5 35.7 50.6 61.6 81.8];
lny=log(y);
c=polyfit(x,lny,1);
a=exp(c(2))
b=c(1)
x=1:0.2:19;
y=a*exp(b*x);
grid on
xlabel('x')
ylabel('y=a*exp(bx)')
plot(x,y,'linewidth',3)