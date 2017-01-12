%CIS515 Proj 1
%Hari Sudhan Parameswaran; Karthik Methuku; Sharadha Srinivasan
%
%Question2.2
%
% This program take the input for ploting the bezeir curve of degree m,
% accepts the m+1 input control points and the max number of iterations
% INPUT=N,Iterations
% OUTPUT=PLOT

%prompt for input
prompt = {'enter the max number of subdivision iteration','enter the number of control points'};
dlg_title = 'De-Casteljau Subdivision Algo for degree m';
num_lines = 1;
defaultans = {'6','4'};
answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
maxiteration=str2num(answer{1});
numberControlpoints=str2num(answer{2});
%invokes the method to get the input control points
decastpoints=getControlPoints(numberControlpoints);
% calls the plotting funtion for each iteration till N->1....N
for i=1:maxiteration  
    %Invokes the subdivision de-castlejau subdivision algo for a bezeir
    %curve of degree m
    decastsubdivisionm(decastpoints,i)
    hold on
    pause;
end

