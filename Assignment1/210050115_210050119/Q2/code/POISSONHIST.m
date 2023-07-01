function POISSONHIST
rng(0);                           % Seed of random number is 0
for i=1:100001
  X(i)=mod(poissrnd(3),25);       % Use of poissrnd(.) function  
  Y(i)=mod(poissrnd(4),25);
  Z(i)=X(i)+Y(i);                 % Required expression  
end
x=0:0.0001:10;
figure(1)
plot(x,X)      % Plots the graph of X
grid
figure(2)
plot(x,Y)      % Plots the graph of Y
grid
figure(3)
plot(x,Z)      % Plots the graph of Z
grid
end