%Bezier curve plotting
%https://github.com/talllankydude
%Hari Sudhan Parameswaran
%
%
%
%To get the input no. of control points >=4 through a dialog box
%plots them as we go along
%Sends the getbezeirpoints method which calculates the bezier points using
%the gausssian elimination and Tridiagonal factorization
%from the de-boor points and plots the segment one by one
prompt = {'Enter the number of Points you want to choose on the polygon'};
dlg_title = 'Polygon';
num_lines = 1;
defaultans = {'10'};
answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
points=str2num(answer{:});
%get n number of input control points
polygonpoints=getControlPoints(points);
%let Ax=b
%construct b

%Constructing A matirx
N=size(polygonpoints,1)-1;
%X_gaussian=zeros(length(polygonpoints(:,1))-2,2);
%X_LU=zeros(length(polygonpoints(:,1))-2,2);
for h=1:2
    Afirst=firstD(N-1);
    Asecond=secondD(N-1);
    Athird=thirdD(N-3);
    bfirst=firstDb(polygonpoints(:,h));
    bsecond=secondDb(polygonpoints(:,h));
    bthird=thirdDb(polygonpoints(:,h));
    X_gaussian_first(:,h)=gausssianElimination(Afirst,bfirst);
    X_gaussian_second(:,h)=gausssianElimination(Asecond,bsecond);
    X_gaussian_third(:,h)=gausssianElimination(Athird,bthird);
    %X_LU(:,h)=LU_tridiagonal(A,b);
end

%plot(X_gaussian(:,1),X_gaussian(:,2));
%plot(X_LU(:,1),X_LU(:,2));

d_gaussian_first=[polygonpoints(1,:); (0.66*polygonpoints(1,:)-0.66*polygonpoints(2,:)+X_gaussian_first(1,:))];
d_gaussian_first=[d_gaussian_first; X_gaussian_first];
d_gaussian_first=[d_gaussian_first; ((X_gaussian_first(end,:))+(0.66*polygonpoints(end,:))-(0.66*polygonpoints(end-1,:))); polygonpoints(end,:)];

d_gaussian_second=[polygonpoints(1,:); (0.66*polygonpoints(1,:)+0.33*X_gaussian_second(1,:))];
d_gaussian_second=[d_gaussian_second; X_gaussian_second];
d_gaussian_second=[d_gaussian_second; (0.33*X_gaussian_second(end,:)+(0.66*polygonpoints(end,:))); polygonpoints(end,:)];

d_gaussian_third=[polygonpoints(1,:); ((7/18)*polygonpoints(1,:)+(8/9)*polygonpoints(2,:)+(7/18)*polygonpoints(3,:)-(2/3)*X_gaussian_third(1,:))];
d_gaussian_third=[d_gaussian_third; ((-1/6)*polygonpoints(1,:)+(4/3)*polygonpoints(2,:)-(1/6)*polygonpoints(3,:))];
d_gaussian_third=[d_gaussian_third; X_gaussian_third];
d_gaussian_third=[d_gaussian_third; ((-1/6)*polygonpoints(end-2,:)+(4/3)*polygonpoints(end-1,:)-(1/6)*polygonpoints(end,:))];
d_gaussian_third=[d_gaussian_third; ((7/18)*polygonpoints(end-2,:)+(8/9)*polygonpoints(end-1,:)+(7/18)*polygonpoints(end,:)-(2/3)*X_gaussian_third(end,:));polygonpoints(end,:)];


%d_LU=[deboorcontrolpoints(1,:); ((2*deboorcontrolpoints(1,:)+X_LU(1,:))/3)];
%d_LU=[d_LU; X_LU]
%d_LU=[d_LU; ((X_LU(end,:)/3)+(2*deboorcontrolpoints(end,:)/3)); deboorcontrolpoints(end,:)]
figure();
hold on
title('intial points');
plot(polygonpoints(:,1),polygonpoints(:,2));
hold off;
figure();
hold on
title('first derivative=0');
plot(polygonpoints(:,1),polygonpoints(:,2));
getbezeirpoints(d_gaussian_first);
hold off;
figure();
hold on
title('second derivative=0');
plot(polygonpoints(:,1),polygonpoints(:,2));
getbezeirpoints(d_gaussian_second);
hold off;
figure();
hold on
title('third derivative=0');
plot(polygonpoints(:,1),polygonpoints(:,2));
getbezeirpoints(d_gaussian_third);
hold off;
%drawcurve(d_LU,2);
