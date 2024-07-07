%%  plot the daily average semi-major axis of the 12 satellites' orbits.
clc;clear all;

data_dir = pwd;

fname     = 'oribits.mat';
fullname  = [data_dir,'\' fname];
load(fullname)

fig = figure;
fig.Position = [100, 50, 650, 500];

% set
ft     = 18;
ftname = 'Arial';
lw = 1.2;
plot(SMA_all,'LineWidth',lw);
Label1 = ylabel('Semi-major axis [km]');
 %Legend = legend( 'RT-Follow<---', 'NetWork Model' ,'Location', 'northwest')
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on')%,'XTickLabel',[]
ax.TickLength = [0.005 0.005];
xticks([1 100 200 300 400]); 
xticklabels({'32','131','231','331','431'});
xlim([0,468]);
xlabel('Day of year 2023-2024');
legend({'55087','55089','55091','55092','55094', ...
    '55095','55096','55097','55099','55100','55101','55102'},'NumColumns',3,'FontSize',10)
%ylim([-2 2]);
%yticklabels({' ','-2','0',' '});
grid on;
%set(gca,'FontName','Times New Roman','FontWeight','bol  d','FontSize',14);
%set(gca,'FontName','Arial','FontSize',14);
set(gca,'fontsize', ft, 'fontname', ftname);