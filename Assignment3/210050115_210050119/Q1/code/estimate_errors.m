% function which returns relative errors for maximum
% likelihood estimate and posterior mean1 and posterior mean2
function [MLE_error,MAP1_error,MAP2_error]=estimate_errors(N,M)
rng(N);   % Hardcoded integer seed
sigma=4;  % Given value of standard deviation
mu=10;    % Given value of mean
mu_prior=10.5;  % Given value of prior mean
sigma_prior=1;  % Given value of prior standard deviation
MLE_error=zeros(M,1);  % Used to store relative errors in MLE
MAP1_error=zeros(M,1); % Used to store relative errors in MAP1
MAP2_error=zeros(M,1); % Used to store relative errors in MAP2
for i=1:M              % for loop for M iterations
    Y=sigma.*randn(N,1)+mu;
    mean_MLE=sum(Y)/N;     % Calculation of MLE
    smean_map1=(mean_MLE*sigma_prior*sigma_prior+ (mu_prior*sigma*sigma/N))/(sigma_prior*sigma_prior + (sigma*sigma/N));
    mean_MAP1=smean_map1; % Calculation of mean of MAP1
    % Calculation of mean of MAP2
    if mean_MLE>=9.5 && mean_MLE<=11.5 
        mean_MAP2=mean_MLE;
    elseif mean_MLE<9.5
        mean_MAP2=9.5;
    else
        mean_MAP2=11.5;
    end
    MLE_error(i,1)=abs(mean_MLE-mu)/mu;  % Calculation of relative error
    MAP1_error(i,1)=abs(mean_MAP1-mu)/mu;% Calculation of relative error
    MAP2_error(i,1)=abs(mean_MAP2-mu)/mu;% Calculation of relative error
end



