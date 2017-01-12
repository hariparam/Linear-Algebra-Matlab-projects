%CIS515 Proj 1
%Hari Sudhan Parameswaran; Karthik Methuku; Sharadha Srinivasan
%
%
%Takes the control points as input calculate the de-boor points and plot
%invokes the bezeir method to plot the bezeir curve for each segment
%has a sepererate loop condition to map the N=6 case.

function[bezeircontrolpoints]=getbezeirsegments(deboorpoints)
bezeircontrolpoints=[];
N=size(deboorpoints,1)-1;
L=size(deboorpoints,1);
numSegments=size(deboorpoints,1)-3;
plot(deboorpoints(:,1),deboorpoints(:,2));
hold on;
    for i =1:numSegments
        if i==1
            bezeircontrolpoints(1,:)=deboorpoints(1,:);
            bezeircontrolpoints(2,:)=deboorpoints(2,:);
            bezeircontrolpoints(3,:)=(deboorpoints(2,:)+deboorpoints(3,:))/2;
            bezeircontrolpoints(4,:)=(deboorpoints(2,:)*0.25)+(deboorpoints(3,:)*7/12)+(deboorpoints(4,:)/6);
        elseif (i==2 && numSegments ~= 3)
            bezeircontrolpoints(1,:)=(deboorpoints(2,:)/4)+(deboorpoints(3,:)*7/12)+(deboorpoints(4,:)/6);
            bezeircontrolpoints(2,:)=(deboorpoints(3,:)*2/3)+(deboorpoints(4,:)/3);
            bezeircontrolpoints(3,:)=(deboorpoints(3,:)/3)+(deboorpoints(4,:)*2/3);
            bezeircontrolpoints(4,:)=(deboorpoints(3,:)/6)+(deboorpoints(4,:)*4/6)+(deboorpoints(5,:)/6);
        elseif (i==2 && numSegments==3)
            bezeircontrolpoints(1,:)=(deboorpoints(2,:)/4)+(deboorpoints(3,:)*7/12)+(deboorpoints(4,:)/6);
            bezeircontrolpoints(2,:)=(deboorpoints(3,:)*2/3)+(deboorpoints(4,:)/3);
            bezeircontrolpoints(3,:)=(deboorpoints(3,:)/3)+(deboorpoints(4,:)*2/3);
            bezeircontrolpoints(4,:)=(deboorpoints(3,:)/6)+(deboorpoints(4,:)*7/12)+(deboorpoints(5,:)/4);
        elseif (i==numSegments-1 && numSegments ~= 3)
            bezeircontrolpoints(1,:)=(deboorpoints(L-4,:)/6)+(deboorpoints(L-3,:)*4/6)+(deboorpoints(L-2,:)/6);
            bezeircontrolpoints(2,:)=(deboorpoints(L-3,:)*2/3)+(deboorpoints(L-2,:)/3);
            bezeircontrolpoints(3,:)=(deboorpoints(L-3,:)/3)+(deboorpoints(L-2,:)*2/3);
            bezeircontrolpoints(4,:)=(deboorpoints(L-3,:)/6)+(deboorpoints(L-2,:)*7/12)+(deboorpoints(L-1,:)/4);
        elseif i==numSegments
            bezeircontrolpoints(1,:)=(deboorpoints(L-1,:)/4)+(deboorpoints(L-2,:)*7/12)+(deboorpoints(L-3,:)/6);
            bezeircontrolpoints(2,:)=(deboorpoints(L-2,:)+deboorpoints(L-1,:))/2;
            bezeircontrolpoints(3,:)=deboorpoints(L-1,:);
            bezeircontrolpoints(4,:)=deboorpoints(L,:);
        else
            bezeircontrolpoints(1,:)=(deboorpoints(i,:)/6)+(deboorpoints(i+1,:)*4/6)+(deboorpoints(i+2,:)/6);
            bezeircontrolpoints(2,:)=(deboorpoints(i+1,:)*2/3)+(deboorpoints(i+2,:)/3);
            bezeircontrolpoints(3,:)=(deboorpoints(i+1,:)/3)+(deboorpoints(i+2,:)*2/3);
            bezeircontrolpoints(4,:)=(deboorpoints(i+1,:)/6)+(deboorpoints(i+2,:)*4/6)+(deboorpoints(i+3,:)/6);
        end
        beziercurve=bezier(bezeircontrolpoints);
        title('press any key see the next segment');
        plot(bezeircontrolpoints(:,1),bezeircontrolpoints(:,2),'color','red','linestyle','-','marker','square');
        hold on
        plot(beziercurve(:,1),beziercurve(:,2),'b--');
        hold on
        pause;
    end
end