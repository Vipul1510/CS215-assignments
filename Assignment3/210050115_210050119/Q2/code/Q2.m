% function which returns relative errors for maximum
% likelihood estimate and posterior mean
function [error_MLE , error_MAP]=Q2(N,M)
rng(N/5-1);    % Hardcoded integer seed
alpha=5.5; % Given value of alpha
beta=1;    % Given value of beta
lambda=5;  % Given true value of lambda
error_MAP=zeros(M,1);  % To store relative errors in posterior MAP
error_MLE=zeros(M,1);  % To store relative errors in MLE
for i=1:M              % for loop to get M errors
    X=rand(N,1);       % Generation of random number row of size N with uniform distribution
    Y=-(log(X))/lambda;% Transforming X into Y according to given equation
    sum_y=0;           % To store sum of Y
    for j=1:N          
        sum_y=sum_y+Y(j,1);% calculates sum of all Y for given N
    end
    lambda_MLE=N/sum_y;    % Value of lambda by Maximum Likelihood Estimation (Formula derived in report)
    posterior_mean=(alpha+N)/(beta+sum_y);  % Bayesian estimate with prior as gamma(alpha , beta are parameters)
    % Posterior mean formula is derived in the Report
    error_MLE(i,1)=abs(lambda_MLE-lambda)/lambda; % Relative errors in MLE
    error_MAP(i,1)=abs(posterior_mean-lambda)/lambda; % Relative errors in posterior mean
end
end