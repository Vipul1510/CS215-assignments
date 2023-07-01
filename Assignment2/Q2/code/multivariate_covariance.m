% Function which takes N as input and returns ML estimate covariance
function emp_cov = multivariate_covariance(N)
rng(0);             % Fixed seed as hard-coded integer
C=[1.6250 -1.9486;-1.9486 3.8750];  % Given Covariance Matrix
Mean = [1;2];       % Given mean
[Q, D]=eig(C);      % Q is orthonormal matrix which diagonalise C
                    % into diagonal matrix D 
A= Q*sqrt(D);       % As derived in report
W=randn(2,N);       % W matrix consists univariate gaussians in 2xN matrix
Y = A*W + repmat(Mean,1,N); % repmat repeats the mean 1*N times
sum_emp_cov = (Y-repmat(Mean,1,N))*(Y-repmat(Mean,1,N)).'; % Gives the sum of all N covariances
emp_cov=sum_emp_cov/N;      % Gives empirical covariance
end