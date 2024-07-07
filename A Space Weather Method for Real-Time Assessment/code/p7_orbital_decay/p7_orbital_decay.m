%%  plot the daily average semi-major axis of the 12 satellites' orbits.
clc;clear all;

data_dir = pwd;

fname1     = 'case_115_contrast_2R.mat';
fullname1  = [data_dir,'\' fname1];
load(fullname1)

fname2     = 'case_511_contrast_2R.mat';
fullname2  = [data_dir,'\' fname2];
load(fullname2)

fname3     = '1025_1107_day.txt';
fullname3  = [data_dir,'\' fname3];
load(fullname3)

fname4     = '0430_0513_day.txt';
fullname4  = [data_dir,'\' fname4];
load(fullname4)


data1=1000*FY_D_r_115;    data2=1000*my_R_115;
data3=1000*FY_D_r_511;    data4=1000*my_R_511;
fig = figure;
fig.Position = [100, 50, 1000, 700];
t = tiledlayout(2,2,'TileSpacing','none');
%1——————————————————————————————————
nexttile(1)
ax=nexttile(1) ;

x=1:1:14;
x_dst=0:1:15;

A1 = plot(x_dst,X1025_1107_day);
hold on

hTitle = title('Case on November 5, 2023');
hXLabel = xlabel('Day of year 2024');
hYLabel = ylabel('Daily Average Dst (nT)');
% 
set(A1,  'LineStyle', '-', 'Color', [0.02745 0.40784 0.60392],...   %[0.02745 0.40784 0.60392]深蓝  [0.51765 0.62745 0.76863]浅蓝
         'LineWidth', 3)

% 
set(gca, 'Box', 'off', ...                                 % 边框
         'LineWidth',1,...                                 % 线宽
         'XGrid', 'on', 'YGrid', 'on', ...                % 网格
         'TickDir', 'out', 'TickLength', [.015 .015], ...  % 刻度
         'XMinorTick', 'off', 'YMinorTick', 'off', ...     % 小刻度
         'XColor', [.1 .1 .1],  'YColor', [.1 .1 .1],...   % 坐标轴颜色
         'XTick', 0:1:15,'XTickLabels',{'' '121' '122' '123' '124' '125' '126' '127' '128' '129' '130' '131' '132' '133' '134' ''},...                              % 坐标轴刻度
         'XLim', [0 15], 'YTick',-300:50:50,'YTickLabels',{'-300' '-250' '-200' '-150' '-100' '-50' '0' '50'},...
         'YLim', [-300 50])
% 
XL = get(gca,'xlim'); XR = XL(2);
YL = get(gca,'ylim'); YT = YL(2);
xc = get(gca,'XColor');
yc = get(gca,'YColor');
plot(XL,YT*ones(size(XL)),'color', xc,'linewidth',1)
plot(XR*ones(size(YL)),YL,'color', yc,'linewidth',1)
% 
%hLegend = legend([p2], ...
 %               'Mean', ...
 %              'Location', 'northwest');
%P = hLegend.Position;
%hLegend.Position = P + [0.015 -0.05 0 0.05];
% 
set(gca, 'FontName', 'Arial', 'FontSize', 12)
set([hXLabel,hYLabel], 'FontSize', 14, 'FontName', 'Arial')
set(hTitle, 'FontSize', 14, 'FontWeight' , 'bold')  
text(0.5,25,'(a)','FontName','Arial','FontSize',14)
% bg color
set(gcf,'Color',[1 1 1])
%2——————————————————————————————————
nexttile(2)
ax=nexttile(2) ;

x=1:1:14;
x_dst=0:1:15;
%E1 = errorbar(x,y,error);
A1 = plot(x_dst,X0430_0513_day);
hold on

hTitle = title('Case on May 11, 2024');
%hXLabel = xlabel('Day of year 2024');
%hYLabel = ylabel('Dst (nT)');
% 
set(A1,  'LineStyle', '-', 'Color', [0.02745 0.40784 0.60392],...       %[0.75294 0.73333 0.73333]浅棕
         'LineWidth', 3)

% 
set(gca, 'Box', 'off', ...                                 % 边框
         'LineWidth',1,...                                 % 线宽
         'XGrid', 'on', 'YGrid', 'on', ...                % 网格
         'TickDir', 'out', 'TickLength', [.015 .015], ...  % 刻度
         'XMinorTick', 'off', 'YMinorTick', 'off', ...     % 小刻度
         'XColor', [.1 .1 .1],  'YColor', [.1 .1 .1],...   % 坐标轴颜色
         'XTick', 0:1:15,'XTickLabels',{'' '121' '122' '123' '124' '125' '126' '127' '128' '129' '130' '131' '132' '133' '134' ''},...                              % 坐标轴刻度
         'XLim', [0 15], 'YTick',-300:50:50,'YTickLabels','',...
         'YLim', [-300 50])
% 
XL = get(gca,'xlim'); XR = XL(2);
YL = get(gca,'ylim'); YT = YL(2);
xc = get(gca,'XColor');
yc = get(gca,'YColor');
plot(XL,YT*ones(size(XL)),'color', xc,'linewidth',1)
plot(XR*ones(size(YL)),YL,'color', yc,'linewidth',1)
% 
%hLegend = legend([p2], ...
 %               'Mean', ...
 %              'Location', 'northwest');
%P = hLegend.Position;
%hLegend.Position = P + [0.015 -0.05 0 0.05];
% 
set(gca, 'FontName', 'Arial', 'FontSize', 12)
%set([hXLabel,hYLabel], 'FontSize', 12, 'FontName', 'Arial')
set(hTitle, 'FontSize', 14, 'FontWeight' , 'bold')
% 
set(gcf,'Color',[1 1 1])
text(0.5,25,'(b)','FontName','Arial','FontSize',14)
%3——————————————————————————————————
nexttile(3)
ax=nexttile(3) ;
x=1:1:14;
y1=data1;
y2=data2;
error = data2 - data1;

E1 = plot(x,y1);
hold on
E2 = plot(x,y2);
%hTitle = title('Case 2023.11.5');
hXLabel = xlabel('Day of year 2023');
hYLabel = ylabel('Decay Rate (m/day)');
% 
set(E1,  'LineStyle', '-', 'Color', [0.97647 0.75294 0.03529],...
         'LineWidth', 3, 'Marker', 'o', 'MarkerSize', 6, ...
         'MarkerEdgeColor', [.2 .2 .2], 'MarkerFaceColor' , [0.97647 0.75294 0.03529])
set(E2,  'LineStyle', '-', 'Color', [0.25882 0.61569 0.57255],...
         'LineWidth', 3, 'Marker', 'o', 'MarkerSize', 6, ...
         'MarkerEdgeColor', [.2 .2 .2], 'MarkerFaceColor' , [0.25882 0.61569 0.57255])

% 
set(gca, 'Box', 'off', ...                                 % 边框
         'LineWidth',1,...                                 % 线宽
         'XGrid', 'on', 'YGrid', 'on', ...                % 网格
         'TickDir', 'out', 'TickLength', [.015 .015], ...  % 刻度
         'XMinorTick', 'off', 'YMinorTick', 'off', ...     % 小刻度
         'XColor', [.1 .1 .1],  'YColor', [.1 .1 .1],...   % 坐标轴颜色
         'XTick', 0:1:15,'XTickLabel',{'' '298' '299' '300' '301' '302' '303' '304' '305' '306' '307' '308' '309' '310' '311' ''},...                              % 坐标轴刻度
         'XLim', [0 15],'YLim', [-600 -50])
% 
XL = get(gca,'xlim'); XR = XL(2);
YL = get(gca,'ylim'); YT = YL(2);
xc = get(gca,'XColor');
yc = get(gca,'YColor');
plot(XL,YT*ones(size(XL)),'color', xc,'linewidth',1)
plot(XR*ones(size(YL)),YL,'color', yc,'linewidth',1)
% 
hLegend = legend([E1,E2], ...
                 'Observation','Estimation', ...
                 'Location', 'northeast');
P = hLegend.Position;
%hLegend.Position = P + [0.015 -0.05 0 0.05];
% 
set(gca, 'FontName', 'Arial', 'FontSize', 12)
set([hYLabel], 'FontSize', 14, 'FontName', 'Arial')
set([hLegend], 'FontSize', 10, 'FontName', 'Arial')
set(hTitle, 'FontSize', 14, 'FontWeight' , 'bold')
% 
set(gcf,'Color',[1 1 1])
text(0.5,-100,'(c)','FontName','Arial','FontSize',14)
%4——————————————————————————————————
nexttile(4)
ax=nexttile(4) ;
x=1:1:14;
y3=data3;
y4=data4;
error = data4 - data3;
%E1 = errorbar(x,y,error);
E3 = plot(x,y3);
hold on
E4 = plot(x,y4);
%hTitle = title('Case 2024.5.11');
hXLabel = xlabel('Day of year 2024');
%hYLabel = ylabel('Decay Rate (m/day)');
% 
set(E3,  'LineStyle', '-', 'Color', [0.97647 0.75294 0.03529],...
         'LineWidth', 3, 'Marker', 'o', 'MarkerSize', 6, ...
         'MarkerEdgeColor', [.2 .2 .2], 'MarkerFaceColor' , [0.97647 0.75294 0.03529])
set(E4,  'LineStyle', '-', 'Color', [0.25882 0.61569 0.57255],...
         'LineWidth', 3, 'Marker', 'o', 'MarkerSize', 6, ...
         'MarkerEdgeColor', [.2 .2 .2], 'MarkerFaceColor' , [0.25882 0.61569 0.57255])

% 
set(gca, 'Box', 'off', ...                                 % 边框
         'LineWidth',1,...                                 % 线宽
         'XGrid', 'on', 'YGrid', 'on', ...                % 网格
         'TickDir', 'out', 'TickLength', [.015 .015], ...  % 刻度
         'XMinorTick', 'off', 'YMinorTick', 'off', ...     % 小刻度
         'XColor', [.1 .1 .1],  'YColor', [.1 .1 .1],...   % 坐标轴颜色
         'XTick', 0:1:15,'XTickLabels',{'' '121' '122' '123' '124' '125' '126' '127' '128' '129' '130' '131' '132' '133' '134' ''},...                              % 坐标轴刻度
         'XLim', [0 15], ...
         'YTickLabel',' ','YLim', [-600 -50])
% 
XL = get(gca,'xlim'); XR = XL(2);
YL = get(gca,'ylim'); YT = YL(2);
xc = get(gca,'XColor');
yc = get(gca,'YColor');
plot(XL,YT*ones(size(XL)),'color', xc,'linewidth',1)
plot(XR*ones(size(YL)),YL,'color', yc,'linewidth',1)
% 
%hLegend = legend([E3,E4], ...
                % 'Observation','Estimation', ...
                % 'Location', 'southwest');
%P = hLegend.Position;
%hLegend.Position = P + [0.015 -0.05 0 0.05];
% 
set(gca, 'FontName', 'Arial', 'FontSize', 12)
set([hXLabel, hYLabel], 'FontSize', 14, 'FontName', 'Arial')
set(hTitle, 'FontSize', 14, 'FontWeight' , 'bold')
% 
set(gcf,'Color',[1 1 1])
text(0.5,-100,'(d)','FontName','Arial','FontSize',14)