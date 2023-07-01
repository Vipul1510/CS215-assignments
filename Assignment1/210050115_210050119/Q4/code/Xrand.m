% Function which creates random numbers based on given PDF
function Xrand                          % Seed is not fixed as only number has to printed.
a = rand(1,1);                          % Concept of inverse CDF is used
if(a<0.5)                               % Break case at a = 0.5
    icdf= - sqrt(1-2*(a));
end
if(a>0.5)
    icdf= sqrt(2*(a) - 1);
end
fprintf("%f\n",icdf)                    % Prints number.
end