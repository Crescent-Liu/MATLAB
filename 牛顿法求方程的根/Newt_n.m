function x=Newt_n(f_name,x0)
x=x0;
xb=x+1;
k=0;
n=50;
del_x=0.01;
while abs(x-xb)>0.001
    k=k+1;
    xb=x;
    if k>=n 
        break; 
    end
    y=feval(f_name,x);
    y_driv=(feval(f_name,x+del_x)-y)/del_x;
    x=xb-y/y_driv;
 fprintf('k=%.0f,=%.10e,y=%.10e,yd=%.10e\n',k,x,y,y_driv);
end
fprintf('\n  Final answer=%.10e\n',x);
end