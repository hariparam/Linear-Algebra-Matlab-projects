function [b]=thirdDb(p)
    b=[];
    for i=1:length(p)-4
            if i==1
                b=[6*p(3)+(1/6)*p(1)-(4*p(2)/3)+(p(3)/6)];
            elseif i==length(p)-4
                b=[b; 6*p(end-2)+(1/6)*p(end-2)-(4*p(end-1)/3)+(p(end)/6)];
            else
                b=[b; 6*p(i+2)];
            end
    end