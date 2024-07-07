%%
clc; clear all;
%relationship between W and decay
array1=[8 26 42.8 89.7 155.8 39.1 174.0 230.0 175.3 38.8 28.3 28.6 26.7 33.9];%decay
array2=[19.1 43.3 50.94 61.05 62.66 49.8 72.8 65.7 65.5 65.1 53.8 56.9 28.8 45] ;%W

% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( array1, array2 );

% Set up fittype and options.  
ft = fittype( 'power2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [5.67824420433382 0.565620629399686 -7.82749845566156];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );
   
% Plot fit with data.
fig = figure;
fig.Position = [100, 50, 700, 450];
h = plot( fitresult, xData, yData);
h(1,1).MarkerSize=35; h(1,1).Color='#0072BD';
h(2,1).LineWidth=2.5; h(2,1).Color=	'#D95319';
legend( [] );
% Label axes
xlabel( 'Decay (km)', 'Interpreter', 'none' );
ylabel( 'W (km)', 'Interpreter', 'none' );
grid on
set(gca,'FontName','Arial','FontSize',14);
legend off;


