% Draws CDF of PY(.)
function YrandCdf

% For N = 2
N=2;
rng(0);                                  % Seed is set to 0
h=zeros(10000,1);
for i=1:10000
    s=0;
for j=1:N
a = rand(1,1);
  if(a<0.5)                              % Break case at a = 0.5
    icdf= - sqrt(1-2*(abs(a)));          % Concept of inverse CDF is used
  end
  if(a>0.5)
    icdf= sqrt(2*(abs(a)) - 1);
  end
s= s+icdf;                         % Collects sum of all values in an array
end
h(i)=s/N;
end
x=-1:0.001:1 ;
ncount=histcounts(h,x);                  % histcounts(.) counts the same frequency elements
sum=0;
ncount(2001)=0;
for i=1:2001
      sum = sum +ncount(i);              % Iterative method to find CDF
      cdf(i)=sum;
end
hold on
plot(x,cdf/(1)) % Plots the CDF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For N = 4
N=4;
rng(0);                                  % Seed is set to 0
h=zeros(10000,1);
for i=1:10000
    s=0;
for j=1:N
a = rand(1,1);
  if(a<0.5)                              % Break case at a = 0.5
    icdf= - sqrt(1-2*(abs(a)));          % Concept of inverse CDF is used
  end
  if(a>0.5)
    icdf= sqrt(2*(abs(a)) - 1);
  end
s= s+icdf;                         % Collects sum of all values in an array
end
h(i)=s/N;
end
x=-1:0.001:1 ;
ncount=histcounts(h,x);                  % histcounts(.) counts the same frequency elements
sum=0;
ncount(2001)=0;
for i=1:2001
      sum = sum +ncount(i);              % Iterative method to find CDF
      cdf(i)=sum;
end
plot(x,cdf/(1)) % Plots the CDF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For N = 8
N=8;
rng(0);                                  % Seed is set to 0
h=zeros(10000,1);
for i=1:10000
    s=0;
for j=1:N
a = rand(1,1);
  if(a<0.5)                              % Break case at a = 0.5
    icdf= - sqrt(1-2*(abs(a)));          % Concept of inverse CDF is used
  end
  if(a>0.5)
    icdf= sqrt(2*(abs(a)) - 1);
  end
 s=s+icdf;                         % Collects sum of all values in an array
end
h(i)=s/N;
end
x=-1:0.001:1 ;
ncount=histcounts(h,x);                  % histcounts(.) counts the same frequency elements
sum=0;
ncount(2001)=0;
for i=1:2001
      sum = sum +ncount(i);              % Iterative method to find CDF
      cdf(i)=sum;
end
hold on
plot(x,cdf/(1)) % Plots the CDF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For N = 16
N=16;
rng(0);                                  % Seed is set to 0
h=zeros(10000,1);
for i=1:10000
    s=0;
for j=1:N
a = rand(1,1);
  if(a<0.5)                              % Break case at a = 0.5
    icdf= - sqrt(1-2*(abs(a)));          % Concept of inverse CDF is used
  end
  if(a>0.5)
    icdf= sqrt(2*(abs(a)) - 1);
  end
 s= s+icdf;                         % Collects sum of all values in an array
end
h(i)=s/N;
end
x=-1:0.001:1 ;
ncount=histcounts(h,x);                  % histcounts(.) counts the same frequency elements
sum=0;
ncount(2001)=0;
for i=1:2001
      sum = sum +ncount(i);              % Iterative method to find CDF
      cdf(i)=sum;
end
hold on
plot(x,cdf/(1)) % Plots the CDF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For N = 32
N=32;
rng(0);                                  % Seed is set to 0
h=zeros(10000,1);
for i=1:10000
    s=0;
for j=1:N
a = rand(1,1);
  if(a<0.5)                              % Break case at a = 0.5
    icdf= - sqrt(1-2*(abs(a)));          % Concept of inverse CDF is used
  end
  if(a>0.5)
    icdf= sqrt(2*(abs(a)) - 1);
  end
s= s+icdf;                         % Collects sum of all values in an array
end
h(i)=s/N;
end
x=-1:0.001:1 ;
ncount=histcounts(h,x);                  % histcounts(.) counts the same frequency elements
sum=0;
ncount(2001)=0;
for i=1:2001
      sum = sum +ncount(i);              % Iterative method to find CDF
      cdf(i)=sum;
end
hold on
plot(x,cdf/(1)) % Plots the CDF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% For N = 64
N=64;
rng(0);                                  % Seed is set to 0
h=zeros(10000,1);
for i=1:10000
    s=0;
for j=1:N
a = rand(1,1);
  if(a<0.5)                              % Break case at a = 0.5
    icdf= - sqrt(1-2*(abs(a)));          % Concept of inverse CDF is used
  end
  if(a>0.5)
    icdf= sqrt(2*(abs(a)) - 1);
  end
s= s+icdf;                         % Collects sum of all values in an array
end
h(i)=s/N;
end
x=-1:0.001:1 ;
ncount=histcounts(h,x);                  % histcounts(.) counts the same frequency elements
sum=0;
ncount(2001)=0;
for i=1:2001
      sum = sum +ncount(i);              % Iterative method to find CDF
      cdf(i)=sum;
end
hold on
xlabel('x');
ylabel('CDF')
title('Cummulative Distribution Function')
plot(x,cdf/(1)) % Plots the CDF
end