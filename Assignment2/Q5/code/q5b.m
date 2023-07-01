function q5b
load('..\data\mnist.mat');      % Loading file
A=double(digits_train); % Converting integer data type to a floating-point type
D=reshape(A(:,:),28*28,60000);  % Reshaping Matrix into 784x60000 for simplification of covariance and mean
S=zeros(784,60000,10);
total_sum=zeros(784,10);        % Stores sum of each digit in digit+1 column
count=zeros(1,10);              % Keep track of count of each digit
for i=1:60000                   % Loop which iterates over 60000 elements in digits_train
     number=labels_train(i,1);  % Check number from labels_train
     total_sum(:,number+1)=total_sum(:,number+1)+D(:,i);    % Stores sum into total_sum
     count(1,number+1)=count(1,number+1)+1;  % Increases count for that digit 
end
mean=zeros(784,10);
for i=1:10
    mean(:,i)=total_sum(:,i)/count(1,i);    % Stores mean of each digit in digit+1 column
end
%%%%%%%%%%%%% Calculation of Covariance %%%%%%%%%%%%%
H=zeros(784,784,10);
Q=zeros(784,784,10);
K=zeros(784,784,10);
count=zeros(1,10);
for i=1:60000
    number=labels_train(i,1);
    count(1,number+1)=count(1,number+1)+1;
    S(:,count(1,number+1),number+1)=D(:,i)-mean(:,number+1);    % Storing difference between value and mean
end
for i=1:10
    H(:,:,i)=(S(:,:,i)*S(:,:,i).')/count(1,i);      % Calculating Covariance for each digit
    [Q(:,:,i), K(:,:,i)]=eig(H(:,:,i));
end
% Used different labels from labels_train to generate each digit
%%%%%%%%%%%% 5 %%%%%%%%%%%
E=(flip(Q(:,701:784,6),2)).';    % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,1)-mean(:,6));          % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,6),2)*F + mean(:,6);   % Adding mean to the recalculated part
img1=reshape(Y,[],28);
figure(1);
subplot(1,2,2);
imagesc(img1); axis image
subplot(1,2,1);
img2=reshape(D(:,1),[],28);
imagesc(img2); axis image
%%%%%%%%%%%% 0 %%%%%%%%%%%
E=flip((Q(:,701:784,1)),2).';   % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,2)-mean(:,1));         % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,1),2)*F + mean(:,1);  % Adding mean to the recalculated part
img1=reshape(Y,[],28);
figure(2);
subplot(1,2,2);
imagesc(img1); axis image
subplot(1,2,1);
img2=reshape(D(:,2),[],28);
imagesc(img2); axis image
%%%%%%%%%%%% 4 %%%%%%%%%%%
E=flip((Q(:,701:784,5)),2).';   % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,3)-mean(:,5));         % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,5),2)*F + mean(:,5);  % Adding mean to the recalculated part
img1=reshape(Y,[],28);
figure(3);
subplot(1,2,2);
imagesc(img1); axis image
subplot(1,2,1);
img2=reshape(D(:,3),[],28);
imagesc(img2); axis image
%%%%%%%%%%%% 1 %%%%%%%%%%%
E=(flip(Q(:,701:784,2),2)).';   % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,4)-mean(:,2));         % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,2),2)*F + mean(:,2);    % Adding mean to the recalculated part
img1=reshape(Y,[],28);          
figure(4);
subplot(1,2,2);
imagesc(img1); axis image
subplot(1,2,1);
img2=reshape(D(:,4),[],28);
imagesc(img2); axis image
%%%%%%%%%%%% 9 %%%%%%%%%%%
E=flip(Q(:,701:784,10),2).';    % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,5)-mean(:,10));        % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,10),2)*F + mean(:,10);   % Adding mean to the recalculated part
img1=reshape(Y,[],28);
figure(5);
subplot(1,2,2);
imagesc(img1); axis image
subplot(1,2,1);
img2=reshape(D(:,5),[],28);
imagesc(img2); axis image
%%%%%%%%%%%% 2 %%%%%%%%%%%
E=flip(Q(:,701:784,3),2).';     % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,6)-mean(:,3));         % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,3),2)*F + mean(:,3);  % Adding mean to the recalculated part
img1=reshape(Y,[],28);
figure(6); 
subplot(1,2,2);
imagesc(img1); axis image
subplot(1,2,1);
img2=reshape(D(:,6),[],28);
imagesc(img2); axis image
%%%%%%%%%%%% 3 %%%%%%%%%%%
E=flip(Q(:,701:784,4),2).';     % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,8)-mean(:,4));         % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,4),2)*F + mean(:,4);  % Adding mean to the recalculated part
img1=reshape(Y,[],28);
figure(7); 
subplot(1,2,2);
imagesc(img1); axis image
subplot(1,2,1);
img2=reshape(D(:,8),[],28);
imagesc(img2); axis image
%%%%%%%%%%%% 6 %%%%%%%%%%%
E=flip(Q(:,701:784,7),2).';     % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,14)-mean(:,7));        % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,7),2)*F + mean(:,7);   % Adding mean to the recalculated part
img1=reshape(Y,[],28);
figure(8); 
subplot(1,2,2);
imagesc(img1); axis image
subplot(1,2,1);
img2=reshape(D(:,14),[],28);
imagesc(img2); axis image
%%%%%%%%%%%% 7 %%%%%%%%%%%
E=flip(Q(:,701:784,8),2).';     % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,16)-mean(:,8));        % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,8),2)*F + mean(:,8);     % Adding mean to the recalculated part
img1=reshape(Y,[],28);
figure(9); 
subplot(1,2,2);
imagesc(img1); axis image
subplot(1,2,1);
img2=reshape(D(:,16),[],28);
imagesc(img2); axis image
%%%%%%%%%%%% 8 %%%%%%%%%%%
E=(flip(Q(:,701:784,9),2)).';    % Taking 84 eigenvectors which highest eigenvalues
F=E*(D(:,18)-mean(:,9));          % Finding components image-mean on principal modes of variartion
Y=flip(Q(:,701:784,9),2)*F + mean(:,9);     % Adding mean to the recalculated part
img1=reshape(Y,[],28);
figure(10); 
subplot(1,2,2);
imagesc(img1); axis image
img2=reshape(D(:,18),[],28);
subplot(1,2,1);
imagesc(img2); axis image
end