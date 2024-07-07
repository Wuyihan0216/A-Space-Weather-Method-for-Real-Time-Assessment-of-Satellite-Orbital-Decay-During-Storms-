
%%
clc; clear all;
data_dir = pwd;

fname1     = 'D.mat';
fullname1  = [data_dir,'\' fname1];
load(fullname1);

fname2     = 'density.mat';
fullname2  = [data_dir,'\' fname2];
load(fullname2);


x1=aver_p0_all_new(1:212);   
x2=aver_p0_all_new(213:425); 
x3=aver_p0_all_new(426:453); x4=aver_p0_all_new(454:468); x5=aver_p0_all_new(469:486);
x0=cat(1,x3,x4,x5);
fig = figure;
fig.Position = [100, 50, 700, 800];

% set
ft     = 14;
ftname = 'Arial';
lw = 0.8;
%%
s(1) = subplot(411)
plot(NRL_500,'LineWidth',1)
hold on
plot(SB_density,'LineWidth',1)
plot(my_func1,'LineWidth',1,'Color','#7E2F8E')    %R^2=0.6001  R=0.77
grid off
xticklabels('')
%title('2023.2.1-8.31')
ylabel('\rho [kg/m^3]');
set(gca,'fontsize',ft,'linewidth',1)
xlim([1 212])
%ylim([0*10^(-12) 1.6*10^(-12)])
%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/40,yl(2)- (yl(2)-yl(1))*1/7,'(a)','fontsize',ft,'color','k')
legend('\rho_{MSIS}','\rho_{POD}','\rho_D','FontSize',8,'Location','northeast','NumColumns',3,'box','off');%'box','off',
%

%%
s(2) = subplot(412);

plot(NRL_480,'LineWidth',1)
hold on
plot(SA_density,'LineWidth',1)
plot(my_func2,'LineWidth',1,'Color','#7E2F8E')  %R^2=0.608  R=0.78
grid off
xticklabels('')
%title('2023.9.1-2024.3.31')
ylabel('\rho [kg/m^3]');
set(gca,'fontsize',ft,'linewidth',1)
xlim([1 213])
%ylim([0*10^(-12) 1.8*10^(-12)])
%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/40,yl(2)- (yl(2)-yl(1))*1/7,'(b)','fontsize',ft,'color','k')
legend('\rho_{MSIS}','\rho_{POD}','\rho_D','FontSize',8,'Location','northeast','NumColumns',3,'box','off');%'box','off',
%
%%
s(3) = subplot(413);

plot(NRL_445,'LineWidth',1)
hold on
%plot(SB_density_300,'LineWidth',1)
plot(myfunc_0,'LineWidth',1,'Color','#7E2F8E')  %R^2=0.4955  0.70
grid off
xticklabels('')

set(gca,'fontsize',ft,'linewidth',1)
xlim([1 61])
xlabel('Day of year 2023-2024');
%title('2024.4.1-2024.5.13')%2024.4.1-2024.5.31
ylabel('\rho [kg/m^3]');
%ylim([0*10^(-12) 1.5*10^(-12)])
%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/40,yl(2)- (yl(2)-yl(1))*1/7,'(c)','fontsize',ft,'color','k')
legend('\rho_{MSIS}','\rho_D','FontSize',8,'Location','northeast','NumColumns',3,'box','off');%'box','off',
%
%% 
s(4) = subplot(414);

 sz=18;
p_1=scatter(x1,SB_density,sz,'filled');
%p_1=plot(lnp0_aver,1000*density_500,'o','MarkerFaceColor','#0072BD','LineWidth',1.5);
hold off
hold on
p_2=scatter(x2,SA_density,sz,'filled');
p_3=scatter(x0,NRL_445,sz,'filled','MarkerFaceColor','#77AC30');
%p_2=plot(lnp0_aver,SB_density,'o','MarkerFaceColor','#D95319','LineWidth',1.5);
hold off

hold on
p1=5.36*10^(-10);  
p2=1.163*10^(-13);  
myfunc_1 =p1*x1 + p2;
p_4= line(x1,myfunc_1,'Color','#0072BD','LineStyle','-','LineWidth',1.5);%0.6001 0.77
hold off
hold on
p3=7.57*10^(-10);  
p4=2.611*10^(-13); 
myfunc_2 =   p3*x2 + p4;
p_5= line(x2,myfunc_2,'Color','#D95319','LineStyle','-','LineWidth',1.5);%0.608 0.78
hold off
hold on
p5=1.08*10^(-9);
p6=1.202*10^(-12);
myfunc_0 =   p5*x0 + p6;
p_5= line(x0,myfunc_0,'Color','#77AC30','LineStyle','-','LineWidth',1.5);  %0.4955 0.70
hold off

legend('SWARM B','SWARM A','MSIS','','FontSize',8,'Location','northeast','NumColumns',1);%'box','off',
ylabel('\rho_{POD} [kg/m^3]');
xlabel('D');
%title('Correlation','FontSize',4);
%ylim([0*10^(-12) 1.5*10^(-12)])
%xlim([-7.5 -6])
box on
%text(0.55*10^(-3),1.9*10^(-12),'(a)','FontSize',14)
%set(gca,'FontName','Arial','FontSize',14);
%set (gcf,'Position',[100,300,1270,550])
grid off
set(gca,'fontsize',ft,'linewidth',1)
%
xl = get(gca,'XLim');
yl = get(gca,'YLim');
text(xl(1)+(xl(2)-xl(1))/40,yl(2)- (yl(2)-yl(1))*1/7,'(d)','fontsize',ft,'color','k')
hold off

