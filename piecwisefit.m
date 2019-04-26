
n=length(x);

m1 = zeros(n, 1);
m2 = zeros(n, 1);

b1 = zeros(n, 1);
b2 = zeros(n, 1);

S = zeros(n, 1);

for i=1:length(x)
    e=x(i);
    j=length(x(x<e));
    
    A=findA(x, e);
    r=findR(x, y, e);
    c=A\r;
    
    b1(i)=c(1);
    m1(i)=c(2);
    b2(i)=c(1)+e*(c(2)-c(3));
    m2(i)=c(3);
    
    S(i)=sum((y(1:j)-c(1)-c(2)*x(1:j)).^2)+sum((y(j+1:n)-b2(i)-c(3)*x(j+1:n)).^2);
    
end

t=table(x, y, b1, m1, b2, m2, S) % the best is row 10

plot(x, y, 'or')
hold on
y2=x(1:10)*m1(10)+b1(10);
y3=x(10:24)*m2(10)+b2(10);

plot(x(1:10), y2, x(10:24), y3)
axis([1,20,1,20])
fprintf('The best S = %f \n',S(10) )



