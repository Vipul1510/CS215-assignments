% This function takes any value between 1 and 60000
% returns the 84 coordinates of the of image from mnist data set
% So by choosing different numbers from 60000 we can find 84 coordinates
% for each digit 0-9
function Ans = q5a(input_num)
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
number=labels_train(input_num,1);
E=(flip(Q(:,701:784,number+1),number+1)).';       % Taking 84 eigenvectors which has highest eigenvalues
Ans=E*(D(:,input_num)-mean(:,number+1));                  % Returns 84 coordinates of given image (that is from mnist data set image number as input)

end