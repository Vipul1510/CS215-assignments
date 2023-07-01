function q2d(N)
rng(0);       % Fixed seed as hard-coded integer
C=[1.6250 -1.9486;-1.9486 3.8750];  % Given Covariance Matrix
Mean = [1;2];   % Given mean
[Q, D]=eig(C);  % Q is orthonormal matrix which diagonalise C
                % into diagonal matrix D and whose columns are 
                % the corresponding eigenvectors of C
A= Q*sqrt(D);           % As derived in report
% Finding Mean
W=randn(2,N);           % W matrix consists univariate gaussians in 2xN matrix 
Y=A*W+repmat(Mean,1,N); % repmat repeats the mean 1*N times
Empirical_mean=(sum(Y.')/N).';         % Uses sum function and gives empirical mean
% Finding covariance
sum_emp_cov = (Y-repmat(Empirical_mean,1,N))*(Y-repmat(Empirical_mean,1,N)).'; % Gives the sum of all N covariances
emp_cov=sum_emp_cov/N;  % Gives empirical covariance
[R, J]=eig(emp_cov);
v1=[R(1,1);R(1,2)];     % first eigen vector
v2=[R(2,1);R(2,2)];     % second eigen vector
l1=sqrt(J(1,1));   % Finding square root lambda1 value
l2=sqrt(J(2,2));  % Finding square root lambda2 value
hold on
scatter(Y(1,:),Y(2,:));
p=plot([Empirical_mean(1,1)-l1*v1(1,1) Empirical_mean(1,1)+l1*v1(1,1)],[Empirical_mean(2,1)-l1*v1(2,1)  Empirical_mean(2,1)+l1*v1(2,1)]);
q=plot([Empirical_mean(1,1)-l2*v2(1,1) Empirical_mean(1,1)+l2*v2(1,1)],[Empirical_mean(2,1)-l2*v2(2,1) Empirical_mean(2,1)+l2*v2(2,1)]);

 p(1).LineWidth = 2;
 q(1).LineWidth = 2;
hold off
end