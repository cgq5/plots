close all
clear;
addpath('dropout_prec_results')
view = '4';
rtype = 'doc4img';
%rtype = 'img4doc';

lincca = importdata(['lincca',view,'_',rtype,'.txt']);
linpls = importdata(['linpls',view,'_',rtype,'.txt']);
mvda= importdata(['mvda',view,'_',rtype,'.txt']);
lda = importdata(['linfda',view,'_',rtype,'.txt']);
ldar = importdata(['linfdar',view,'_',rtype,'.txt']);

rec = linspace(0,1,11);
figure, 
plot(rec,lincca,'-o',...
    rec,linpls,'-*',...
    rec,mvda,'-+',...
    rec,lda,'-^',...
    rec,ldar,'-d',...
    'LineWidth', 2)
legend('CCA', 'PLS', 'MvDA','LDA',  'LDA-dropout', 'location','northeast')
%legend('CCA', 'PLS', 'MvDA','LDA',  'LDA-dropout', 'location','southwest')
grid on 
set(gca,'FontSize',20)
set(gca,'FontName','Times New Roman')
xlabel('Recall') % x-axis label
ylabel('Precision') % y-axis label
set(gca,'LineWidth',1.5)
%save2pdf(['wiki_v',view,'_',rtype,'.pdf'])
print(['dropout_v',view,'_',rtype],'-depsc')
close all
