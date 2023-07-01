% function which calculates mean, covariance C, top 4 principal 
% eigenvectors of C and plots their images along with mean
function q6a1
S=zeros(19200,16);
for i=1:16          % for loop to get data
A=imread("..\data\data_fruit\image_"+i+".png"); % Takes values of each image
A=reshape(A,[],19200);                  % Reshapes the matrix
S(:,i)=A;                               % Store the values of each image
end
mean=sum(S.')/16;                       % Calculating Mean
cov=(S-repmat(mean.',1,16))*(S-repmat(mean.',1,16)).'/16;  % Calculating Covariance
[Q, D]=eigs(cov,4);
mean=rescale(mean,0,1); % Mean is rescaled
% Drawing subplots
% 1. For mean
subplot(1,5,1);
D=reshape(mean,[80 80 3]);
image(D);
% 2. For top eigenvector 1
subplot(1,5,2); 
D=reshape((rescale(Q(:,1),0,1)),[80 80 3]);
image(D);
% 3. For top eigenvector 2
subplot(1,5,3); 
D=reshape((rescale(Q(:,2),0,1)),[80 80 3]);
image(D);
% 4. For top eigenvector 3
subplot(1,5,4); 
D=reshape((rescale(Q(:,3),0,1)),[80 80 3]);
image(D);
% 5. For top eigenvector 4
subplot(1,5,5); 
D=reshape((rescale(Q(:,4),0,1)),[80 80 3]);
image(D);
end