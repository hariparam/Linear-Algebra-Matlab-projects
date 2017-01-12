%perform timing and precision analysis of Gaussian Elimination and LU
%factorization metod for tridiagonal matrices
% we will generate tridiagonal matrices of size 10*10 to 1000*1000;
%compare the timings for
%1. Default linsolve matlab function
%2. Gaussian elimination
%3. LU-facotization for tridiagonal matrices
time=zeros(1000,3);
error=zeros(1000,2);
for d=10:1000
    d
    %invoke generateTdarray(n) method to generate a Tridiagonal matrices of
    %n*n dimension;
    A=generateTdarray(d);
    %invoke generateSolnarray(n) method to generate a matrices of
    %n*1 dimension;
    b=generateSolnarray(d);
    tic
    ls=linsolve(A,b);
    time(d,1)=toc;
    tic
    ge=gausssianElimination(A,b);
    time(d,2)=toc;
    tic
    lu=LU_tridiagonal(A,b);
    time(d,3)=toc;
    error(d,1)=sum(ge-ls);
    error(d,2)=sum(lu-ls);
end
figure();
hold on;
plot(time(:,1));
plot(time(:,2));
plot(time(:,3));
hold off;
figure();
hold on
plot(error(:,1));
plot(error(:,2));
hold off;

