% VAR of GUMBEL Function
function GUMBELvar(u,b)
x=linspace(-10,20,3001);                % 3001 is number of intervals
z=(x-u)/b;
y=(1/b)*(exp(-(((z))+(exp(-z)))));      % GUMBEL function
 var=0;
 for i=1:3001
     var=var+(((x(i)-b).^2)*y(i)*0.01); % Riemann summation iterative step
 end
 fprintf("variance=%f\n",var);
 fprintf("Deviation from analytically known variance = %f\n",abs((pi*pi/6)*b.^2 - var))
end