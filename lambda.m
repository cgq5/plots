close all
clear;
addpath('lambda_dropout')
%rtype = 'img4doc';

p4 = importdata(['cufsf7_collect-4.txt']);
p5 = importdata(['cufsf7_collect-5.txt']);
p6 = importdata(['cufsf7_collect-6.txt']);

rec = linspace(0.1,1,10);
figure, 
plot(rec,p4(:,1),'-o',...
    rec,p4(:,2),'-*',...
    rec,p5(:,1),'-+',...
    rec,p5(:,2),'-^',...
    rec,p6(:,1),'-d',...
    rec,p6(:,2),'-p',...
    'LineWidth', 2)
legend('Sketch-Face, \alpha=-4',...
'Face-Sketch, \alpha=-4',...
'Sketch-Face, \alpha=-5',...
'Face-Sketch, \alpha=-5',...
'Sketch-Face, \alpha=-6',...
'Face-Sketch, \alpha=-6',...
'location','southwest')

grid on 
set(gca,'FontSize',12)
set(gca,'FontName','Times New Roman')
xlabel('\alpha') % x-axis label
ylabel('Recognition Accuracy') % y-axis label
set(gca,'LineWidth',1.5)
%save2pdf(['wiki_v',view,'_',rtype,'.pdf'])
print(['lambda'],'-depsc')
%close all