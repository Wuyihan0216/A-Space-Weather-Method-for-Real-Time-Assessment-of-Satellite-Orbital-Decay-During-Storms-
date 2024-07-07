%%
clc; clear all;
data_dir = pwd;

fname     = '12w.mat';
fullname  = [data_dir,'\' fname];
load(fullname);

sz=5;
fig = figure;
fig.Position = [100, 50, 1200, 700];

% set
ft     = 18;
ftname = 'Arial';
lw = 1.6;
t = tiledlayout(3,4,'TileSpacing','none');
ylabel(t,'$\mathrm{ln(-d\sqrt{a}/dt)}$','Interpreter','latex','FontSize',18,'FontName',ftname)
xlabel(t,'$\mathrm{a-a_0}$','Interpreter','latex','FontSize',18,'FontName',ftname)

%1——————————————————————————————————55087
nexttile(1)
ax=nexttile(1) ;

x=m_R_R0_55087;
p_1=plot(m_R_R0_55087,lnD_sr_55087,'o','LineWidth',1.2,'MarkerSize',sz);

p1=-0.01643 ;
p2=-6.916;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineWidth',2,'color','#D95319');
hold off

text(-22,-4.2,'W=60.9km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(a)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
yticks([-10 -8 -6 -4])
yticklabels([-10 -8 -6 -4])
box on
set(gca,'XDir','reverse','XTickLabel',[],'FontName',ftname,'FontSize',14);

%2———————————————————————————————————55089
nexttile(2)
ax=nexttile(2) ;
x=m_R_R0_55089;
p_1=plot(m_R_R0_55089,lnD_sr_55089,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.0167 ;
p2=-6.816;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-22,-4.2,'W=60.0km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(b)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%3————————————————————————————————————55091
nexttile(3)
ax=nexttile(3) ;
x=m_R_R0_55091;
p_1=plot(m_R_R0_55091,lnD_sr_55091,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01569 ;
p2=-6.871;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');%'#0072BD'
hold off

text(-22,-4.2,'W=63.7km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(c)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%4————————————————————————————————————55092
nexttile(4)
ax=nexttile(4) ;
x=m_R_R0_55092;
p_1=plot(m_R_R0_55092,lnD_sr_55092,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01492 ;
p2=-6.835;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');%'#0072BD'
hold off

text(-22,-4.2,'W=67.0km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(d)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%5————————————————————————————————————55094
nexttile(5)
ax=nexttile(5) ;
x=m_R_R0_55094;
p_1=plot(m_R_R0_55094,lnD_sr_55094,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01579 ;
p2=-6.872;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-22,-4.2,'W=63.3km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(e)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
yticks([-10 -8 -6 -4])
yticklabels([-10 -8 -6 -4])
box on

set(gca,'XDir','reverse','XTickLabel',[],'FontName',ftname,'FontSize',14);
%6————————————————————————————————————55095
nexttile(6)
ax=nexttile(6) ;
x=m_R_R0_55095;
p_1=plot(m_R_R0_55095,lnD_sr_55095,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01607 ;
p2=-6.886;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-22,-4.2,'W=62.2km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(f)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%7————————————————————————————————————55096
nexttile(7)
ax=nexttile(7) ;
x=m_R_R0_55096;
p_1=plot(m_R_R0_55096,lnD_sr_55096,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01564 ;
p2=-6.876;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-22,-4.2,'W=64.0km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(g)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%8————————————————————————————————————55097
nexttile(8)
ax=nexttile(8) ;
x=m_R_R0_55097;
p_1=plot(m_R_R0_55097,lnD_sr_55097,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01639 ;
p2=-6.869;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-22,-4.2,'W=61.0km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(h)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
box on

set(gca,'XDir','reverse','XTickLabel',[],'YTickLabel',[],'FontName',ftname,'FontSize',14);
%9————————————————————————————————————55099
nexttile(9)
ax=nexttile(9) ;
x=m_R_R0_55099;
p_1=plot(m_R_R0_55099,lnD_sr_55099,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01616 ;
p2=-6.868;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-22,-4.2,'W=61.9km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(i)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
xticks([-60 -40 -20 0 20 40])
xticklabels([-60 -40 -20 0 20 40])
yticks([-10 -8 -6 -4])
yticklabels([-10 -8 -6 -4])
box on

set(gca,'XDir','reverse','FontName',ftname,'FontSize',14);
%10————————————————————————————————————55100
nexttile(10)
ax=nexttile(10) ;
x=m_R_R0_55100;
p_1=plot(m_R_R0_55100,lnD_sr_55100,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01759 ;
p2=-6.878;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');%'#0072BD'
hold off

text(-22,-4.2,'W=56.9km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(j)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
xticks([-60 -40 -20 0 20 40])
xticklabels([-60 -40 -20 0 20 40])
box on

set(gca,'XDir','reverse','YTickLabel',[],'FontName',ftname,'FontSize',14);
%11————————————————————————————————————55101
nexttile(11)
ax=nexttile(11) ;
x=m_R_R0_55101;
p_1=plot(m_R_R0_55101,lnD_sr_55101,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01606 ;
p2=-6.842;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');
hold off

text(-22,-4.2,'W=62.3km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(k)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
xticks([-60 -40 -20 0 20 40])
xticklabels([-60 -40 -20 0 20 40])
box on

set(gca,'XDir','reverse','YTickLabel',[],'FontName',ftname,'FontSize',14);
%12————————————————————————————————————55102
nexttile(12)
ax=nexttile(12) ;
x=m_R_R0_55102;
p_1=plot(m_R_R0_55102,lnD_sr_55102,'o','LineWidth',1.2,'MarkerSize',sz);
p1=-0.01526 ;
p2=-6.837;
myfunc_w =p1*x + p2;
hold on
p_2= line(x,myfunc_w,'LineStyle','-','LineWidth',2,'color','#D95319');%'#0072BD'
hold off

text(-22,-4.2,'W=65.5km','FontName',ftname,'FontSize',14)
text(48,-4.2,'(l)','FontName',ftname,'FontSize',14)

ylim([-10.5 -3.5])
xlim([-70 50])
xticks([-60 -40 -20 0 20 40])
xticklabels([-60 -40 -20 0 20 40])
box on

set(gca,'XDir','reverse','YTickLabel',[],'FontName',ftname,'FontSize',14)




