function covariance_Boxplot
% Gets value of errors from multivariate_covariance function for 
% N = 10, 100, 1000, 10000, 100000.
Z=[ covariance_errors(10).';
    covariance_errors(100).';
    covariance_errors(1000).';
    covariance_errors(10000).';
    covariance_errors(100000).'];
hold on
boxplot(Z.');        % plots the boxplot
title("Boxplot of the error between the true covariance C and the ML estimate")
hold off
end

% Function which takes N as input and returns array of errors in covariance
function Z = covariance_errors(N)
Z=zeros(100,1);     % Empty array initialized with zero
rng(N);             % Fixed seed as hard-coded integer
C=[1.6250 -1.9486;-1.9486 3.8750];  % Given Covariance Matrix
Mean = [1;2];       % Given mean
[Q, D]=eig(C);      % Q is orthonormal matrix which diagonalise C
                    % into diagonal matrix D 
A= Q*sqrt(D);       % As derived in report
for j=1:100         % For loop to repeat experiment 100 times
   W=randn(2,N);
   Y = A*W + repmat(Mean,1,N);  % repmat repeats the mean 1*N times
   sum_emp_cov = (Y-repmat(Mean,1,N))*(Y-repmat(Mean,1,N)).';
   emp_cov = sum_emp_cov/N;
   error = emp_cov - C;         % Errors in covariance
   % (frobenius norm) Calculate numerator according to formula given in question
   x=error(1,1)*error(1,1) + error(2,2)*error(2,2) + error(2,1)*error(2,1) +error(1,2)*error(1,2);
   b= C(1,1)*C(1,1) + C(2,2)*C(2,2) +C(1,2)*C(1,2)+C(2,1)*C(2,1);   % Denominator of formula given in question
   Z(j)=sqrt(x)/b;  % array which contains error
end
end