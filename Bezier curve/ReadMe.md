%Bezier curve plotting
%https://github.com/talllankydude
%Hari Sudhan Parameswaran
%
%
% Plotting Bezier curve
%Get the input no. of control points through a dialog box
%plots them as we go along
%Sends the getbezeirpoints method which calculates the bezier points
%from the de-boor points and plots the segment one by one

###########################################

deboor_bezier-Run this file to begin the code; takes the input no. of contol points; opens a new figure where the you can select the points using mouse.

###########################################

%Files used
%1.deboor_bezier-Run this file to begin the code; takes the input no. of contol points
%2.getControlPoints: Allows the user to select the points on a graph
%3.getbezeirpoints: Calculates the bezier control points from the de-boor
%4.bezier: takes the bezierCP input and gives the bezier segment
%
%Plotting a curve using decasteljeu algorithm
%get the input points from the user and the max iteration for subdivision
%Use de-casteljau subdivision algo for plotting the polygonal curve
%

#############################################

decasteljaupoints: Run this file to the max iteration for subdivision, opens a new figure where the you can select the points using mouse.

#############################################

%Files used
%1.decasteljaupoints: Run this file to the max iteration for subdivision
%2.getControlPoints: Allows the user to select the points on a graph
%3.decasteljausubdivision: take the input bezierpoints applies the subdivision algorithm on it the max iteration time, the plots for each iteration can be seen by pressing any key
%
% This program take the input for ploting the bezeir curve of degree m,
% accepts the m+1 input control points and the max number of iterations
% INPUT=N,Iterations
% OUTPUT=PLOT
%Files used
%1.decastdegreem: take the input for ploting the bezeir curve of degree m
%2.decasteljausubdivisionm: does subdivision algo for degree m
%3. getldud : returns the Ld, ud for the given set of control points