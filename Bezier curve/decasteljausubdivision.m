%CIS515 Proj 1
%Hari Sudhan Parameswaran; Karthik Methuku; Sharadha Srinivasan
%
%
%Ques 2.1
%
%Get the input control points invokes applies 
%the decastlejau subdivision algo and plot the control polygon from
%the given set of 4 input control points
function []=decasteljausubdivision(bezeirpoints, n,iteration)
    if nargin < 3
        iteration = 1;
    end
    bezeirpoints0=bezeirpoints(1,:);
    bezeirpoints1=bezeirpoints(2,:);
    bezeirpoints2=bezeirpoints(3,:);
    bezeirpoints3=bezeirpoints(4,:);
    bezeirpoints10=(bezeirpoints0+bezeirpoints1)/2;
    bezeirpoints11=(bezeirpoints1+bezeirpoints2)/2;
    bezeirpoints12=(bezeirpoints2+bezeirpoints3)/2;
    bezeirpoints20=(bezeirpoints10+bezeirpoints11)/2;
    bezeirpoints21=(bezeirpoints11+bezeirpoints12)/2;
    bezeirpoints30=(bezeirpoints20+bezeirpoints21)/2;
    bezeirpolygon1=[bezeirpoints0;bezeirpoints10;bezeirpoints20;bezeirpoints30];
    bezeirpolygon2=[bezeirpoints30;bezeirpoints21;bezeirpoints12;bezeirpoints3];
    if n==iteration
        title(['press any key to increase the subdivision iteration. current level',num2str(n)])
        plot(bezeirpolygon1(:,1),bezeirpolygon1(:,2));
        hold on;
        plot(bezeirpolygon2(:,1),bezeirpolygon2(:,2));
        hold on;
    else
        decasteljausubdivision(bezeirpolygon1,n,iteration+1);
        decasteljausubdivision(bezeirpolygon2,n,iteration+1);
    end
end
    
    