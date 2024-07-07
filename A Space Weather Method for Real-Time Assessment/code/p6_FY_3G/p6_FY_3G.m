%%  plot the daily average semi-major axis of the 12 satellites' orbits.
clc;clear all;

data_dir = pwd;

fname     = 'FY3G.mat';
fullname  = [data_dir,'\' fname];
load(fullname)

fig = figure;
fig.Position = [100, 50, 650, 500];


FY3G_SMA=FY3G_416_521(139:402);%2023.9.1~2024.5.21
% set
ft     = 18;
ftname = 'Arial';
lw = 1.6;

% shaded area-----------1
x_rect = [54, 68]; %  x range
y_rect = [6780,6790]; %  y range
% plot rectangle
rectangle('Position', [x_rect(1), y_rect(1), diff(x_rect), diff(y_rect)], 'EdgeColor', 'none');

patch([x_rect(1), x_rect(2), x_rect(2), x_rect(1)], [y_rect(1), y_rect(1), y_rect(2), y_rect(2)], [0.81176 0.79608 0.89804], 'EdgeColor', 'none');

hold on
% shaded area----------2
x_rect2 = [24, 38]; % 矩形的 x 范围
y_rect2 = [6780,6790]; % 矩形的 y 范围
% plot rectangle
rectangle('Position', [x_rect2(1), y_rect2(1), diff(x_rect2), diff(y_rect2)], 'EdgeColor', 'none');

patch([x_rect2(1), x_rect2(2), x_rect2(2), x_rect2(1)], [y_rect2(1), y_rect2(1), y_rect2(2), y_rect2(2)], [0.97648 0.88235 0.87059], 'EdgeColor', 'none');
hold on
% shaded area----------3
x_rect3 = [217, 231]; % 矩形的 x 范围
y_rect3 = [6780,6790]; % 矩形的 y 范围
% plot rectangle
rectangle('Position', [x_rect3(1), y_rect3(1), diff(x_rect3), diff(y_rect3)], 'EdgeColor', 'none');

p1=patch([x_rect3(1), x_rect3(2), x_rect3(2), x_rect3(1)], [y_rect3(1), y_rect3(1), y_rect3(2), y_rect3(2)], [0.97648 0.88235 0.87059], 'EdgeColor', 'none');
hold on
% shaded area-----------4
x_rect4 = [242, 256]; % 矩形的 x 范围
y_rect4 = [6780,6790]; % 矩形的 y 范围
% plot rectangle
rectangle('Position', [x_rect4(1), y_rect4(1), diff(x_rect4), diff(y_rect4)], 'EdgeColor', 'none');

p2=patch([x_rect4(1), x_rect4(2), x_rect4(2), x_rect4(1)], [y_rect4(1), y_rect4(1), y_rect4(2), y_rect4(2)], [0.81176 0.79608 0.89804], 'EdgeColor', 'none');
hold on

plot(FY3G_SMA,'LineWidth',2.3,'Color',[0.2 0.2 0.2]);
text(26,6789.8,'R1','FontName',ftname,'FontSize',12);
text(56,6789.8,'O1','FontName',ftname,'FontSize',12);
text(219,6789.8,'R2','FontName',ftname,'FontSize',12);
text(244,6789.8,'O2','FontName',ftname,'FontSize',12);

Label1 = ylabel('Semi-major axis [km]');
 %Legend = legend( 'RT-Follow<---', 'NetWork Model' ,'Location', 'northwest')
set(gca, 'FontName', 'Helvetica', 'FontSize', 10,'YGrid','on')%,'XTickLabel',[]
ax.TickLength = [0.005 0.005];
xticks([1 50 100 150 200 250]); 
xticklabels({'244','293','343','393','443','493'});
xlim([0,264]);
xlabel('Day of year 2023-2024');
legend([p1,p2],{'Reference','Objective'},'NumColumns',3,'FontSize',9,'Location','north');
%ylim([-2 2]);
%yticklabels({' ','-2','0',' '});
grid on;
box on;
%set(gca,'FontName','Times New Roman','FontWeight','bold','FontSize',14);
%set(gca,'FontName','Arial','FontSize',14);
set(gca,'fontsize', ft, 'fontname', ftname);