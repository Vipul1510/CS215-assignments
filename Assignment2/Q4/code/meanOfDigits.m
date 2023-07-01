function meanOfDigits
load('..\data\mnist.mat');       % Loading file
A=double(digits_train);  % Converting integer data type to a floating-point type
D=reshape(A(:,:),28*28,60000); % Reshaping Matrix into 784x60000 for simplification of covariance and mean
total_sum=zeros(784,10); % Stores sum of each digit in digit+1 column
count=zeros(1,10);       % Keep track of count of each digit
for i=1:60000            % Loop which iterates over 60000 elements in digits_train
     number=labels_train(i,1);      % Check number from labels_train
     total_sum(:,number+1)=total_sum(:,number+1)+D(:,i);    % Stores sum into total_sum
     count(1,number+1)=count(1,number+1)+1;   % Increases count for that digit
end
mean=zeros(784,10);      % Empty matrix 
for i=1:10
    mean(:,i)=total_sum(:,i)/count(1,i); % Stores mean of each digit in digit+1 column
end
% To draw images of mean of each digit 
for z=1:10      
J=mean(:,z);
img2=reshape(J,[],28);    % Reshaping images back to 28x28
figure(z); imagesc(img2); axis image   % Generating image
end
end