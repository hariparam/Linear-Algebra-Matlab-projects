function x=LU_tridiagonal(M,d)
    %getting the size of M matrix
    [m,n]=size(M);
    if m~=n
        Disp('Input is not a square matrix')
    end
    %Extraction a b c from the matrix%
    a=zeros(1,m);
    b=zeros(1,m);
    c=zeros(1,m);
    %To store the values of intermediate computation%
    z=zeros(1,m);
    w=zeros(1,m);
    %Output values are given in X
    X=zeros(1,m);
    for i=1:m
        b(i)=M(i,i);
        if i>1
            a(i)=M(i-1,i);
        end
        if i+1<m
           c(i)=M(i,i+1); 
        end
    end 
    z(1)=c(1)/b(1);
    for i=2:m-1
        z(i)=c(i)/(b(i)-a(i)*z(i-1));
    end
    z(m)=b(m)-a(m)*z(m-1);

    w(1)=d(1)/b(1);
    for i=2:m
        w(i)=(d(i)-a(i)*w(i-1))/(b(i)-a(i)*z(i-1));
    end

    X(m)=w(m);
    for i=1:m-1
        X(m-i)=w(m-i)-z(m-i)*X(m-i+1);
    end
    x=X;