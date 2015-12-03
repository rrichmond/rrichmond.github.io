% Plotting Tutorial
% These examples are derived from the mathworks matlab introduction

x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)

xlabel('x')
ylabel('sin(x)')
title('Plot of the Sine Function')

% this command stops another plot from being created
hold on

% now lets add another line to it
y2 = cos(x);
% notice that the parameter LineSpec
% allows you to change the look. See doc plot
plot(x,y2,'r:')
% now lets add a legend in the order of how lines were plotted
legend('sin','cos')

% 3D plotting
% the figure command opens up a new window to plot on
figure;
[X,Y] = meshgrid(-2:.2:2);
Z = X .* exp(-X.^2 - Y.^2);
surf(X,Y,Z)

% subplot allows for multiple plots on one
figure;
t = 0:pi/10:2*pi;
[X,Y,Z] = cylinder(4*cos(t));
subplot(2,2,1); mesh(X); title('X');
subplot(2,2,2); mesh(Y); title('Y');
subplot(2,2,3); mesh(Z); title('Z');
subplot(2,2,4); mesh(X,Y,Z); title('X,Y,Z');
