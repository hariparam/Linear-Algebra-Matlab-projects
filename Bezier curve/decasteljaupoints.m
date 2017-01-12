%Bezier curve plotting
%https://github.com/talllankydude
%Hari Sudhan Parameswaran
%
%
%
%Get the input no. of subdivision iteration through a dialog box
%invokes the decastlejau subdivision algo and plot the control polygon from
%the given set of 4 input control points

prompt = {'enter the max number of subdivision iteration'};
dlg_title = 'De-Casteljau Subdivision Algo';
num_lines = 1;
defaultans = {'6'};
answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
maxiteration=str2num(answer{1});
%numberControlpoints=str2num(answer{2});
numberControlpoints=4;
decastpoints=getControlPoints(numberControlpoints);
for i=1:maxiteration  
    decasteljausubdivision(decastpoints,i);
    hold on
    pause;
end
