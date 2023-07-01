function digitImages
load('..\data\mnist.mat');      % Loading file
A=double(digits_train); % Converting integer data type to a floating-point type
D=reshape(A(:,:),28*28,60000);  % Reshaping Matrix into 784x60000 for simplification of covariance and mean
S=zeros(784,60000,10);         
total_sum=zeros(784,10);        % Stores sum of each digit in digit+1 column
count=zeros(1,10);              % Keep track of count of each digit
for i=1:60000                   % Loop which iterates over 60000 elements in digits_train
     number=labels_train(i,1);                  % Check number from labels_train
     total_sum(:,number+1)=total_sum(:,number+1)+D(:,i);     % Stores sum into total_sum
     count(1,number+1)=count(1,number+1)+1;      % Increases count for that digit
end
mean=zeros(784,10);             % Empty matrix
for i=1:10
    mean(:,i)=total_sum(:,i)/count(1,i);     % Stores mean of each digit in digit+1 column
end
%%%%%%%% Computation of covariance, eigenvector and eigenvalue %%%%%%%
H=zeros(784,784,10);
count=zeros(1,10);
for i=1:60000
    number=labels_train(i,1);
    count(1,number+1)=count(1,number+1)+1;
    S(:,count(1,number+1),number+1)=D(:,i)-mean(:,number+1); % Storing difference between value and mean
end
Q=zeros(784,784,10);      % Stores all eigenvectors as columns
K=zeros(784,784,10);      % Stores all eigenvalues in diagonal matrix
for i=1:10
    H(:,:,i)=(S(:,:,i)*S(:,:,i).')/count(1,i); % Computing covariance
    [Q(:,:,i), K(:,:,i)]=eig(H(:,:,i));        % Computing Q and K
end
% Drawing 30 images 
for z=1:10
J=mean(:,z)-sqrt(K(784,784,z))*Q(:,784,z);
img1=reshape(J,[],28);
figure(3*z-2); imagesc(img1); axis image
J=mean(:,z);
img2=reshape(J,[],28);
figure(3*z-1); imagesc(img2); axis image
J=mean(:,z)+sqrt(K(784,784,z))*Q(:,784,z);
img3=reshape(J,[],28);
figure(3*z); imagesc(img3); axis image
end
end