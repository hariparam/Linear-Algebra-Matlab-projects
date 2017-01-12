%Bezier curve plotting%

https://github.com/talllankydude

Hari Sudhan Parameswaran


<b>Plotting Bezier curve</b>

Get the input no. of control points through a dialog box plots them as we go along Sends the getbezeirpoints method which calculates the bezier points from the de-boor points and plots the segment one by one

<b>deboor_bezier</b>:Run this file to begin the code; takes the input no. of contol points; opens a new figure where the you can select the points using mouse.

input prompt:

![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/prompt__bezier.jpg)

input points:

![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/bezier_input.jpg)

bezier curve:
the marked red colored points represent the computed control points

![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/bezier_curve.jpg)

%Files used
%1.deboor_bezier-Run this file to begin the code; takes the input no. of contol points 
%2.getControlPoints: Allows the user to select the points on a graph 
%3.getbezeirpoints: Calculates the bezier control points from the de-boor 
%4.bezier: takes the bezierCP input and gives the bezier segment

Plotting a curve using decasteljeu algorithm 
get the input points from the user and the max iteration for subdivision 
Use de-casteljau subdivision algo for plotting the polygonal curve

<b>decasteljaupoints</b>: Run this file to the max iteration for subdivision, opens a new figure where the you can select the points using mouse.

input prompt:

![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/prompt_decastlejeu.jpg)

input points:

![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/decast_input.fig)

bezier curve at the end of each iteration:
the iteation increases the curve complexit increases.

![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/decast_iter1.jpg)
![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/decast_iter2.jpg)
![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/decast_iter3.jpg)
![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/decast_iter4.jpg)
![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/decast_iter5.jpg)
![](https://github.com/talllankydude/Linear-Algebra-Matlab-projects/blob/master/Bezier%20curve/Images/decast_iter6.jpg)



Files used
1.decasteljaupoints: Run this file to the max iteration for subdivision
2.getControlPoints: Allows the user to select the points on a graph
3.decasteljausubdivision: take the input bezierpoints applies the subdivision algorithm on it the max iteration time, the plots for each iteration can be seen by pressing any key

This program take the input for ploting the bezeir curve of degree m, accepts the m+1 input control points and the max number of iterations
INPUT=N,Iterations
OUTPUT=PLOT

Files used
1.decastdegreem: take the input for ploting the bezeir curve of degree m
2.decasteljausubdivisionm: does subdivision algo for degree m
3. getldud : returns the Ld, ud for the given set of control points
