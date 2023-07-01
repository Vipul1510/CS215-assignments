% This function generates sample images
function q6c
rng(6);             % Value of seed is hard-coded
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
min_value=zeros(1,4);   % Stores minimum values of coefficients of top 4 eigen vector 
max_value=zeros(1,4);   % Stores maximum values of coefficients of top 4 eigen vector 
for j=1:16      % Loop to draw 16 images
    for i=1:4   % Loop for 4 eigen vectors
    e=(S(:,j).'-mean)*Q(:,i) ;  % Calculating coefficient of eigenvector in linear combination
    min_value(1,i)=min(min_value(1,i),e); % Calculating minimum value of coefficient
    max_value(1,i)=max(max_value(1,i),e); % Calculating maximum value of coefficient
    end
end
% Searched inside 20 images that are created and reported the three which
% are different from others.
for j=1:20      % Loop to draw 16 images
    summ=mean;
    for i=1:4   % Loop for 4 eigen vectors
    % Coefficient of eigenvector in linear combination for each eigenvector
    % can be found using uniform distribution between it's maximum and
    % minimum value
    e=rand*(max_value(1,i)-min_value(1,i)) + min_value(1,i);  % Calculating coefficient of eigenvector in linear combination
    summ=summ+e*Q(:,i).';       % Adding coefficient*eigenvector to mean
    end
% 18 16 11 (These are the distinct images observed in set of 20 new images) plotting image
figure(j)
D=reshape(rescale(summ,0,1),[80 80 3]);
image(D);
end
% closing everything except figure 18,16,11
close(1);close(2);close(3);close(4);close(5);close(6);close(7);close(8);close(9);
close(10);close(12);close(13);close(14);close(15);close(17);close(19);close(20);

end
