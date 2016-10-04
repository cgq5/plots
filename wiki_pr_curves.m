close all
clear;
addpath('wiki_prec_results')
view = '3';
rtype = 'doc4img';
%rtype = 'img4doc';

lincca = importdata(['lincca',view,'_',rtype,'.txt']);
linpls = importdata(['linpls',view,'_',rtype,'.txt']);
linfda = importdata(['linfda',view,'_',rtype,'.txt']);
slda = importdata(['slda',view,'_',rtype,'.txt']);
kcca = importdata(['kcca',view,'_',rtype,'.txt']);
kpls = importdata(['kpls',view,'_',rtype,'.txt']);
kfda = importdata(['kfda',view,'_',rtype,'.txt']);
gma = importdata(['gma',view,'_',rtype,'.txt']);
mvda= importdata(['mvda',view,'_',rtype,'.txt']);

rec = linspace(0,1,11);
figure, 
plot(rec,lincca,'-o',...
    rec,linpls,'-*',...
    rec,slda,'-+',...
    rec,linfda,'-^',...
    rec,gma,'-d',...
    rec,mvda,'-p',...
    rec,kcca,'-v',...
    rec,kpls,'->',...
    rec,kfda,'-<',...
    'LineWidth', 2)
legend('LinCCA', 'LinPLS', 'LinMvDA','LMvMDA',  'GMA', 'MvDA', 'KCCA', 'KPLS', 'KMvMDA','location','northeast')
%legend('LinCCA', 'LinPLS','LinMvDA', 'LMvMDA', 'GMA', 'MvDA', 'KCCA', 'KPLS', 'KMvMDA','location','southwest')
grid on 
set(gca,'FontSize',12)
set(gca,'FontName','Times New Roman')
xlabel('Recall') % x-axis label
ylabel('Precision') % y-axis label
set(gca,'LineWidth',1.5)
%save2pdf(['wiki_v',view,'_',rtype,'.pdf'])
print(['wiki_v',view,'_',rtype],'-depsc')
close all
