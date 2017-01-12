%CIS515 Proj 1
%Hari Sudhan Parameswaran; Karthik Methuku; Sharadha Srinivasan
%
%recursive method to calculate the ud and ld for a given set of control
%points. takes the control points as input the first iteration can
%recursively calls itself with b^i_m
%INPUT= Control points, ud, ld
%(b_0+b_1)/2=b^1_0; (b^i_m+b^i_m+1)/2=b^(i+1)_m
function [ud,ld]=getldud(controlpoints,ud, ld)
    controlpointi=zeros(size(controlpoints,1)-1,2);
    for i=1:size(controlpoints,1)-1
        controlpointi(i,:)=(controlpoints(i,:)+controlpoints(i+1,:))/2;
    end
    ud(size(ld,1)-size(controlpointi,1)+1,:)=controlpointi(1,:);
    ld(size(controlpointi,1),:)=controlpointi(end,:);
    if (size(controlpointi,1)~=1)
        %plot(controlpointi(:,1),controlpointi(:,2),'b--o');
        [ud,ld]=getldud(controlpointi,ud,ld);
    end
end
    
        
    
        