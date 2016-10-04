close all
clear;
addpath('param')
view = '4';
%rtype = 'i4t';
rtype = 't4i';

data = importdata([rtype, '_v', view, '.txt']);
data = flipud(data);
figure, bar3(data)
colormap jet
set(gca, 'XTickLabel', {'LinCCA', 'LinPLS', 'LinMvDA', 'LMvMDA', 'KCCA', 'KPLS', 'KMvMDA'})
set(gca, 'YTickLabel', {'200', '150', '100', '50', '20', '10'})
%set(gca, 'xlabel', 'methods')
%set(gca, 'ylabel', 'K')
ylabel('d') % y-axis label
zlabel('MAP') % y-axis label
%legend('LinCCA', 'LinPLS', 'LinLDA', 'GMA', 'MvDA', 'KCCA', 'KPLS', 'KDA','location','northeast')
%legend('LinCCA', 'LinPLS', 'LinLDA', 'GMA', 'MvDA', 'KCCA', 'KPLS', 'KDA','location','southwest')
%grid on 
set(gca,'FontSize',14)
set(gca,'FontName','Times New Roman')
set(gca,'LineWidth',1.5)
%xticklabel_rotate([],45,[],'Fontsize',14)
%set(gca,'position',[0 0 .8 1],'units','normalized')
print(['param_v',view,'_',rtype],'-depsc')
%save2pdf(['param_v',view,'_',rtype,'.pdf'])
close all
