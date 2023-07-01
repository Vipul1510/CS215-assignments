% Draws histogram with 200 bins
function XrandHist
rng(0);                             % Seed is set to 0
for i=1:100000
a = rand(1,1);                      % Concept of inverse CDF is used
  if(a<0.5)                         % Break case at a = 0.5
    icdf= - sqrt(1-2*(abs(a)));     
  end
  if(a>0.5)
    icdf= sqrt(2*(abs(a)) - 1);
  end
h(i)=icdf;                          % Collects all values in an array
end
histogram(h,200);                   % Plots the Histogram
end 