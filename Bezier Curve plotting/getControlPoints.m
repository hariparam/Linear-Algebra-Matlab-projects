%Bezier curve plotting
%https://github.com/talllankydude
%Hari Sudhan Parameswaran
%
%
%
%Method that takes the input no of points n and creates a plot get n input
%points in a graph of field X:(-10,10) and Y:(-10,10)
function[xy] = getControlPoints(n)
    %n = inputdlg({'Enter the number of points(n>=5)'},'Bernstein beizer control Points');
    xy=[];
    figure();
    axis([-10,10,-10,10]);
    for i=1:n
        title('Click control points')
        xy(end+1,:)=ginput(1);
        hold on;
        plot(xy(:,1),xy(:,2),'b--o');
    end
end
