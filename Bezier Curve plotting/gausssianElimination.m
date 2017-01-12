function x=gausssianElimination(A, b)
%let Ax=b
%creating the Augmented Matrix [A|B]
%b=b';
Aug=[A b];
n=rank(A);

[X Y]=max(A);

for i=1:n-1
  if Y(i)~=i
    temp=Aug(i);
    Aug(i)=Aug(X(i));
    Aug(X(i))=temp;
    fprintf('row %d and %d are permuted',i,X(i));
  end
  for j=i+1:n
    Aug(j,:)=Aug(j,:)-Aug(j,i)*Aug(i,:)/Aug(i,i);
   end
end 
x=zeros(size(A,1),1);
for i=n:-1:1
    x(i)=Aug(i,end)/Aug(i,i);
    for j=i+1:size(A,1);
        x(i)=x(i)-Aug(i,j)*x(j)/Aug(i,i);
    end
end