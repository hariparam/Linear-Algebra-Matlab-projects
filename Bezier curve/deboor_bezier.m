%Bezier curve plotting
%https://github.com/talllankydude
%Hari Sudhan Parameswaran
%
%
%
%Get the input no. of control points through a dialog box
%plots them as we go along
%Sends the getbezeirpoints method which calculates the bezier points
%from the de-boor points and plots the segment one by one
prompt = {'Enter the number of deboor Points'};
dlg_title = 'De-Boor-Bezier points';
num_lines = 1;
defaultans = {'10'};
answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
points=str2num(answer{:});
%get n number of input control points
deboorcontrolpoints=getControlPoints(points);
%invokes the method the calculate the deboor points and  plot the beizeir
%segments
getbezeirpoints(deboorcontrolpoints);
