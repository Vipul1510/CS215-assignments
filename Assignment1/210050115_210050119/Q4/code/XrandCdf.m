% Draws CDF of X using given conditions
function XrandCdf
rng(0);                                % Seed is set to 0
for i=1:100000
a = rand(1,1);                         % Concept of inverse CDF is used
  if(a<0.5)                            % Break case at a = 0.5
    icdf= - sqrt(1-2*(abs(a))); 
  end
  if(a>0.5)
    icdf= sqrt(2*(abs(a)) - 1);
  end
h(i)=icdf;                             % Collects all values in an array
end
x=-1:0.001:1 ;
ncount=histcounts(h,x);                % histcounts(.) counts the same frequency elements
sum=0;
ncount(2001)=0;
for i=1:2001
      sum = sum +ncount(i);            % Iterative method to find CDF
      cdf(i)=sum;
end
hold on
xlabel('x');
ylabel('CDF')
title('Cummulative Distribution Function')
plot(x,cdf/100000)                     % Plots the CDF
end