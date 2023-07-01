% VAR of LAPLACE Function
function LAPLACEvar
u=2;                                    % Given location parameter
b=2;                                    % Given scale parameter
x=linspace(-40,40,8001);                % 8001 is number of intervals
y= (1/(2*b))*(exp((-((abs(x-u))/b))));  % Laplace function
var=0;
for i=1:8001
    var=var+(((x(i)-b).^2)*y(i)*0.01); % Riemann summation iterative step
end
fprintf("variance=%f\n",var);
fprintf("Deviation from analytically known variance = %f\n",abs(2*b*b-var))
end 