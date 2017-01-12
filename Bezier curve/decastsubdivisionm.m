%CIS515 Proj 1
%Hari Sudhan Parameswaran; Karthik Methuku; Sharadha Srinivasan
%

% Method that takes the input set of control points and calculates the ld
% and ud values. Plots the control polygon with that ld,ud
% INPUT= Controlpoints, subdivisioncount, iteration counter
% OUTPUT plot the control polygon
function []=decastsubdivisionm(controlpoints, n, iteration)
    if nargin < 3
        iteration = 1;
    end
    ld=zeros(size(controlpoints,1),2);
    ud=zeros(size(controlpoints,1),2);
    ud(1,:)=controlpoints(1,:);
    ld(end,:)=controlpoints(end,:);
    [ud,ld]=getldud(controlpoints,ud,ld);
    if n==iteration
        title(['press any key to increase the subdivision iteration. current level',num2str(n)])
        plot(ud(:,1),ud(:,2));
        hold on;
        plot(ld(:,1),ld(:,2));
        hold on;
    else
        decastsubdivisionm(ud,n,iteration+1);
        decastsubdivisionm(ld,n,iteration+1);
    end
end