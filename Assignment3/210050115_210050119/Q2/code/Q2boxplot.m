% This function plots the boxplot of relative errors for MLE and Bayesian Estimate 
function Q2boxplot
% Used function Q2 to get relative errors
[a1, a2 ]=Q2(5,100);
[b1, b2 ]=Q2(10,100);
[c1, c2 ]=Q2(20,100);
[d1, d2 ]=Q2(40,100);
[e1, e2 ]=Q2(60,100);
[f1, f2 ]=Q2(80,100);
[g1, g2 ]=Q2(100,100);
[h1, h2 ]=Q2(500,100);
[i1, i2 ]=Q2(1000,100);
[j1, j2 ]=Q2(10000,100);
% Plotting Boxplot
figure(1)
x = [a1,a2,b1,b2,c1,c2,d1,d2,e1,e2,f1,f2,g1,g2,h1,h2,i1,i2,j1,j2];
group = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
positions = [1 1.2 1.5 1.7 2 2.2 2.5 2.7 3 3.2 3.5 3.7 4 4.2 4.5 4.7 5 5.2 5.5 5.7];
boxplot(x,group, 'positions', positions);
title('Boxplot for Relative errors')
xlabel('Value of N')
ylabel('Relative error')
set(gca,'xtick',[mean(positions(1:2)) mean(positions(3:4)) mean(positions(5:6)) mean(positions(7:8)) mean(positions(9:10)) mean(positions(11:12)) mean(positions(13:14)) mean(positions(15:16)) mean(positions(17:18)) mean(positions(19:20)) ])
set(gca,'xticklabel',{'5','10','20','40','60','80','100','500','1000','10000'})
color = ['c', 'y', 'c', 'y','c', 'y','c', 'y','c', 'y','c', 'y','c', 'y','c', 'y','c', 'y','c', 'y'];
h = findobj(gca,'Tag','Box');
for j=1:length(h)
   patch(get(h(j),'XData'),get(h(j),'YData'),color(j),'FaceAlpha',.5);
end
c = get(gca, 'Children');
hleg1 = legend(c(1:2), 'relative error in MLE', 'relative error in posterior mean' );
end