function Yrand
h=0;                                   % Seed is not fixed as only number has to printed.
for i=1:1000                           % for loop with N = 1000(infinity)
a = rand(1,1);                         % Xrand is used here
  if(a<0.5)
    icdf= - sqrt(1-2*(abs(a))); 
  end
  if(a>0.5)
    icdf= sqrt(2*(abs(a)) - 1);
  end
h= h+icdf;
end
fprintf("%f\n",h/1000);                % Prints number.
end