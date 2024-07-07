%%  plot the daily average semi-major axis of the 12 satellites' orbits.
clc;clear all;

data_dir = pwd;

fname     = 'error.mat';
fullname  = [data_dir,'\' fname];
load(fullname)


fig = figure;
fig.Position = [100, 50, 800, 700];

% set
ft     = 18;
ftname = 'Arial'; 
lw = 2;

%
dx_err = 0.05;   %0.1
x_err = -5:dx_err:5;   %10

s(1) = subplot(2,1,1);
%
[num_msis1,~] = hist(err_SB_MSIS_1,x_err);
[num_my1,~] = hist(err_SB_myfunc1_1,x_err);
% fill
x_fill = [x_err; x_err];
x_fill = x_fill(:);
x_fill_msis = [x_fill(2:end); x_fill(1)];
y_fill = [num_msis1; num_msis1];
y_fill_msis = y_fill(:);
%f = fill(x_fill_msis, y_fill_msis/length(err_SB_MSIS_1)*100, 'k');
%f.FaceColor = [.85 .85 .85];
% f.FaceColor = '#0072BD';
% f.FaceAlpha = 0.5;
% f.LineWidth = lw;
% f.LineStyle = 'none';
%
hold on
x_fill = [x_err; x_err];
x_fill = x_fill(:);
x_fill_my1 = [x_fill(2:end); x_fill(1)];
y_fill = [num_my1; num_my1];
y_fill_my1 = y_fill(:);
% f = fill(x_fill_goft, y_fill_goft, 'y');
% % f.FaceColor = [.85 .85 .85];
% f.FaceColor = goft_color;
% f.FaceAlpha = 0.05;
% % f.LineWidth = lw;
% f.LineStyle = 'none';
%
p1 = plot(x_fill_msis(1:end-1), y_fill_msis(1:end-1)/length(err_SB_MSIS_1)*100, 'linewidth', lw, 'color','#0072BD');
hold on
p2 = plot(x_fill_my1(1:end-1), y_fill_my1(1:end-1)/length(err_SB_myfunc1_1)*100, 'linewidth', lw, 'color','#7E2F8E');
%
axis([-1 1 0 20])   %30

set(gca,'ytick', 0:5:20)
set(gca,'xtick', [-1:0.2:1])
xlabel('ln(\rho/\rho_{POD})')
ylabel('Proportion (%)')
set(gca,'fontsize', ft)
set(gca, 'layer', 'top', 'Box','on')
title('SWARM B')
%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/50,yl(1)*1/9+yl(2)*8/9,'(a)','fontsize',ft+2,'color','k')

%
lg = legend([p1, p2],'\rho_{MSIS}','\rho_D');
lg.Box = 'off';
lg.Position = [0.7406    0.8157    0.1281    0.1000];

s(2) = subplot(2,1,2);
%
[num_msis2,~] = hist(err_SA_MSIS_2,x_err);
[num_my2,~] = hist(err_SA_myfunc2_2,x_err);
% fill
x_fill = [x_err; x_err];
x_fill = x_fill(:);
x_fill_msis2 = [x_fill(2:end); x_fill(1)];
y_fill = [num_msis2; num_msis2];
y_fill_msis2 = y_fill(:);
% f = fill(x_fill_tgcm, y_fill_tgcm, 'k');
% % f.FaceColor = [.85 .85 .85];
% f.FaceColor = tgcm_color;
% f.FaceAlpha = 0.05;
% % f.LineWidth = lw;
% f.LineStyle = 'none';
%
hold on
x_fill = [x_err; x_err];
x_fill = x_fill(:);
x_fill_my2 = [x_fill(2:end); x_fill(1)];
y_fill = [num_my2; num_my2];
y_fill_my2 = y_fill(:);
% f = fill(x_fill_goft, y_fill_goft, 'y');
% % f.FaceColor = [.85 .85 .85];
% f.FaceColor = goft_color;
% f.FaceAlpha = 0.05;
% % f.LineWidth = lw;
% f.LineStyle = 'none';
%
p1 = plot(x_fill_msis2(1:end-1), y_fill_msis2(1:end-1)/length(err_SA_MSIS_2)*100, 'linewidth', lw, 'color', '#0072BD');
hold on
p2 = plot(x_fill_my2(1:end-1), y_fill_my2(1:end-1)/length(err_SA_myfunc2_2)*100, 'linewidth', lw, 'color', '#7E2F8E');
%
axis([-1 1 0 20])

set(gca,'ytick', 0:5:20)
set(gca,'xtick', [-1:0.2:1])
xlabel('ln(\rho/\rho_{POD})')
ylabel('Proportion (%)')
set(gca,'fontsize', ft)
set(gca, 'layer', 'top', 'Box','on')

title('SWARM A')

%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/50,yl(1)*1/9+yl(2)*8/9,'(b)','fontsize',ft+2,'color','k')