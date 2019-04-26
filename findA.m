function A = findA(x, e)
A=zeros(3,3);

n=length(x);

A(1,1)=n; %1,1
j = length(x(x<e));

%1,2
s=0;
for i=1:j
    s=s+x(i);
end
A(1,2)=s+(n-j)*e;

%1,3
s=0;
for i=j+1:n
    s=s+x(i);
end
A(1,3)=s-(n-j)*e;

%2,1
s=0;
for i=1:j
    s=s+x(i);
end
A(2,1)=s+(n-j)*e;

%2,2
s=0;
for i=1:j
    s=s+x(i)^2;
end
A(2,2)=s+(n-j)*e^2;

%2,3
s=0;
for i=j+1:n
    s=s+x(i)-e;
end
A(2,3)=e*s;

%3,1
s=0;
for i=j+1:n
    s=s+e-x(i);
end
A(3,1)=s;

%3,2
s=0;
for i=j+1:n
    s=s+e-x(i);
end
A(3,2)=s*e;

%3,3
s=0;
for i=j+1:n
    s=s+(x(i)-e)^2;
end
A(3,3)=-s;













