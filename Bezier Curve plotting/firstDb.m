function [b]=firstDb(p)
    for i=1:length(p)-2
            if i==1
                b=[7*p(2)-p(1)];
            elseif i==length(p)-2
                b=[b; (7*p(end-1)-p(end))];
            else
                b=[b; 6*p(i+1)];
            end
    end