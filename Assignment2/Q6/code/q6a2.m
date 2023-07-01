% function plots top 10  eigenvalues of covariance matrix C
function q6a2
S=zeros(19200,16);
for i=1:16          % for loop to get data
A=imread("..\data\data_fruit\image_"+i+".png"); % Takes values of each image
A=reshape(A,[],19200);                  % Reshapes the matrix
S(:,i)=A;                               % Store the values of each image
end
mean=sum(S.')/16;                       % Calculating Mean
cov=(S-repmat(mean.',1,16))*(S-repmat(mean.',1,16)).'/16;  % Calculating Covariance
% Plotting top 10 eigen values
[Q, D]=eigs(cov,10);
eigenvalues=zeros(1,10);
g=zeros(1,10);
for i=1:10
       eigenvalues(1,i)=D(i,i);
       g(1,i)=i;
end
plot(g,eigenvalues,":ok");
xlabel("Component number");
ylabel("Eigenvalue");
title("Top 10 eigenvalues")
end