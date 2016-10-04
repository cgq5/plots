close all
clear;
addpath('coco_prec_results')
view = '4';
%rtype = 'doc4img';
rtype = 'img4doc';

lincca = importdata(['lincca',view,'_',rtype,'.txt']);
linpls = importdata(['linpls',view,'_',rtype,'.txt']);
kcca = importdata(['kcca',view,'_',rtype,'.txt']);
kpls = importdata(['kpls',view,'_',rtype,'.txt']);
dcca = importdata(['dcca',view,'_',rtype,'.txt']);
dpls = importdata(['dpls',view,'_',rtype,'.txt']);
dccastr = importdata(['dcca2str','_',rtype,'.txt']);
% --- 
rec = linspace(0,1,11);
figure, 
plot(rec,lincca,'-o',...
    rec,linpls,'-*',...
    rec,kcca,'-^',...
    rec,kpls,'-d',...
    rec,dcca,'-p',...
    rec,dpls,'-v',...
    rec,dccastr,'->',...
    'LineWidth', 2)
legend('LinCCA', 'LinPLS', 'KapCCA', 'KapPLS', 'DCCA', 'DPLS', 'DCCA2', 'location','southwest')
grid on 
set(gca,'FontSize',12)
set(gca,'FontName','Times New Roman')
xlabel('Recall') % x-axis label
ylabel('Precision') % y-axis label
set(gca,'LineWidth',1.5)
%axes('position',[.65 .175 .25 .25])
%save2pdf(['coco_v',view,'_',rtype,'.pdf'])
print(['coco_v',view,'_',rtype],'-depsc')
close all
