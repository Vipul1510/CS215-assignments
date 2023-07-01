function multivariate_gaussian
rng(0);         % Fixed seed as hard-coded integer
C=[1.6250 -1.9486;-1.9486 3.8750]; % Given Covariance Matrix
Mean = [1;2];   % Given Mean
[Q, D]=eig(C);  % Q is orthonormal matrix which diagonalise C
                % into diagonal matrix D
A=Q*sqrt(D);    % As derived in report
W=[randn()  ; randn()]; % W matrix consists univariate 
                        % standard normal random variables
Y=A*W + Mean;
Y                       % Shows Y on terminal
end
