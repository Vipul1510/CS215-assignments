% This function plots points from points2D_Set1.mat
function q3b
a=matfile('..\data\points2D_Set1.mat'); % opening file
I = size(a.x);
N=I(1,1);
mean=[sum(a.x)/N  sum(a.y)/N];   % Find mean
K=([a.x  a.y]-repmat(mean,N,1)).'*([a.x  a.y]-repmat(mean,N,1)); % Calculation to find covariance
emp_cov=K/N; % Finding covariance
[V, D]=eig(emp_cov);
W=[V(1,2) ; V(2,2)];
hold on
% Plotting Scatterplot
scatter(a.x,a.y);
plot([mean(1,1)-W(1,1) mean(1,1)+W(1,1)],[mean(1,2)-W(2,1) mean(1,2)+W(2,1)]);
title("scatter plot of the points and the line")
hold off
end