function r = findR(x,y,e)

r=zeros(3,1);

n=length(x);

%1,1
r(1,1)=sum(y); 

j = length(x(x<e));

%2,1
s=0;
for i=1:j
    s=s+x(i)*y(i);
end
for i=j+1:n
    s=s+y(i)*e;
end
r(2,1)=s;

%3,1
s=0;
for i=j+1:n
    s=s+y(i)*(e-x(i));
end
r(3,1)=s; 



