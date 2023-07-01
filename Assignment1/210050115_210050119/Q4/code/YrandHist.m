function YrandHist
N= 64 ;                                  % Please change N value to get other histograms
rng(0);                                 % Seed is set to 0
h=zeros(10000,1);
for j=1:10000
s=0;
for i=1:N
  a = rand(1,1);
   if(a<0.5)                             % Break case at a = 0.5
     icdf= - sqrt(1-2*(abs(a)));         % Concept of inverse CDF is used
   end
   if(a>0.5)
     icdf= sqrt(2*(abs(a)) - 1);
   end
   s=s+icdf;      % Collects sum of all values in an array
end
h(j)= s/N;        % Stores Yn in each of 10000 draws
end
hold on;
xlabel('Y')
ylabel('frequencies')
title('Histogram ')
histogram(h,200);                     % Plots the Histogram
end