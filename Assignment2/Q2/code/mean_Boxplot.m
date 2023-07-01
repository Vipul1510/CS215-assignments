function mean_Boxplot
% Gets value of errors from mean_error function for 
% N = 10, 100, 1000, 10000, 100000.
Data=[ mean_error(10).';
       mean_error(100).';
       mean_error(1000).';
       mean_error(10000).';
       mean_error(100000).'];
hold on
boxplot(Data.');% plots the boxplot
title("Boxplot of the error between the true mean µ and the ML estimate")
hold off
end

% Function which takes N as input and returns array of errors in mean
function  Z=mean_error(N)
Z=zeros(100,1); % Empty array initialized with zero
rng(N);         % Fixed seed as hard-coded integer
C=[1.6250 -1.9486;-1.9486 3.8750]; % Given Covariance Matrix
Mean = [1;2];       % Given Mean
[Q, D]=eig(C);      % Q is orthonormal matrix which diagonalise C
                    % into diagonal matrix D  
A= Q*sqrt(D);       % As derived in report
for j=1:100         % For loop to repeat experiment 100 times
    W=randn(2,N);   % W matrix consists univariate gaussians in 2xN matrix 
    Y=A*W+repmat(Mean,1,N);     %repmat repeats the mean 1*N times
    p=(sum(Y.')/N)-Mean.';      % Uses sum function and gives difference between empirical mean and true mean
    a=sqrt( p(1,1)*p(1,1) + p(1,2)*p(1,2)); % Calculating numerator according to formula given in question
    b= sqrt(5);                 % Denominator of formula given in question
    Z(j)=a/b;                   % error
end
end