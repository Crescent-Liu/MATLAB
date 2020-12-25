format long
x=[1940 1950 1960 1970 1980 1990];
y=[132165 151326 179323 203302 226542 249633];
xi=[1965];
yi=lagrange(x,y,xi)
function fi=lagrange(x,y,xi)
fi=zeros(size(xi));
npl=length(y);
for i=1:npl
    z=ones(size(xi));
    for j=1:npl
        if i~=j,z=z.*(xi-x(j))/(x(i)-x(j));
        end
    end
    fi=fi+z*y(i);
end
end

