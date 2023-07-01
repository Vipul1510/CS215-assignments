% function which calculates mean, covariance C, top 4 principal 
% eigenvectors of C
function q6b
S=zeros(19200,16);
for i=1:16          % for loop to get data
A=imread("..\data\data_fruit\image_"+i+".png"); % Takes values of each image
A=reshape(A,[],19200);                  % Reshapes the matrix
S(:,i)=A;                               % Store the values of each image
end
mean=sum(S.')/16;                       % Calculating Mean
cov=(S-repmat(mean.',1,16))*(S-repmat(mean.',1,16)).'/16;  % Calculating Covariance
% calculating top 4 eigen values
[Q, D]=eigs(cov,4);
for j=1:16      % Loop to draw 16 images
    summ=mean;
    for i=1:4   % Loop for 4 eigen vectors
    e=(S(:,j).'-mean)*Q(:,i);   % Calculating coefficient of eigenvector in linear combination
    summ=summ+e*Q(:,i).';       % Adding coefficient*eigenvector to mean
    end
% plotting reconstructed image and original image side-by-side
figure(j)
subplot(1,2,2);
D=reshape(rescale(summ,0,1),[80 80 3]);
image(D);
subplot(1,2,1);
D=reshape(rescale(S(:,j),0,1),[80 80 3]);
image(D);
end
end