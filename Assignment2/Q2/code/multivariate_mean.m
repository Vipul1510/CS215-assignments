% Function which takes N as input and returns ML estimate mean
function p = multivariate_mean(N)
rng(0);                 % Fixed seed as hard-coded integer
C=[1.6250 -1.9486;-1.9486 3.8750]; % Given Covariance Matrix
Mean = [1;2];           % Given Mean
[Q, D]=eig(C);          % Q is orthonormal matrix which diagonalise C
                        % into diagonal matrix D and whose columns are 
                        % the corresponding eigenvectors of C
A= Q*sqrt(D);           % As derived in report
W=randn(2,N);           % W matrix consists univariate gaussians in 2xN matrix 
Y=A*W+repmat(Mean,1,N); % repmat repeats the mean 1*N times
p=(sum(Y.')/N);         % Uses sum function and gives empirical mean 
end