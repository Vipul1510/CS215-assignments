% This function plots the boxplot of relative errors for MLE, MAP1, MAP2 
function error_boxplot
% Used function estimate_errors to get relative errors
[a1, a2, a3]=estimate_errors(5,100);
[b1, b2, b3]=estimate_errors(10,100);
[c1, c2, c3]=estimate_errors(20,100);
[d1, d2, d3]=estimate_errors(40,100);
[e1, e2, e3]=estimate_errors(60,100);
[f1, f2, f3]=estimate_errors(80,100);
[g1, g2, g3]=estimate_errors(100,100);
[h1, h2, h3]=estimate_errors(500,100);
[i1, i2, i3]=estimate_errors(1000,100);
[j1, j2, j3]=estimate_errors(10000,100);
% Plotting the Boxplot
figure(1)
x=[a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2,d3,e1,e2,e3,f1,f2,f3,g1,g2,g3,h1,h2,h3,i1,i2,i3,j1,j2,j3];
group = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30];
positions = [1 1.11 1.22 1.5 1.61 1.72 2 2.11 2.22 2.5 2.61 2.72 3 3.11 3.22 3.5 3.61 3.72 4 4.11 4.22 4.5 4.61 4.72 5 5.11 5.22 5.5 5.61 5.72];
boxplot(x,group, 'positions', positions);
title('Boxplot for Relative errors')
xlabel('Value of N')
ylabel('Relative error')
set(gca,'xtick',[mean(positions(1:3)) mean(positions(4:6)) mean(positions(7:9)) mean(positions(10:12)) mean(positions(13:15)) mean(positions(16:18)) mean(positions(19:21)) mean(positions(22:24)) mean(positions(25:27)) mean(positions(28:30))]);
color = ['c', 'y', 'b', 'c', 'y', 'b','c', 'y', 'b', 'c', 'y', 'b','c', 'y', 'b','c', 'y', 'b','c', 'y', 'b', 'c', 'y', 'b','c', 'y', 'b', 'c', 'y', 'b'];
set(gca,'xticklabel',{'5','10','20','40','60','80','100','500','1000','10000'})
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j),'FaceAlpha',.5);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:3), 'relative error in MLE', 'relative error in posterior mean1','relative error in posterior mean2' );
end