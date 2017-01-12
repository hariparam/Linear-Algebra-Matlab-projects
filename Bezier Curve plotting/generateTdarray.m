function[A]=generateTdarray(n)
    A=zeros(n,n);
    LD=rand(n-1,1);
    UD=rand(n-1,1);
    D=rand(n,1);
    for i=1:n-1
        A(i,i)=D(i);
        A(i,i+1)=UD(i);
        A(i+1,i)=LD(i);
    end
    A(n,n)=D(n);

            
