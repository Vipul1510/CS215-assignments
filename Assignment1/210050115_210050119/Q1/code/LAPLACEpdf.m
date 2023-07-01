% PDF of LAPLACE Function
function LAPLACEpdf
u=2;                                   % Given location parameter
b=2;                              % Given scale parameter
x = -20:0.1:20;                   
y=(1/(2*b))*(exp((-((abs(x-u))/b))));  % Laplace function
hold on;
plot(x,y);
xlabel 'x values';
ylabel 'y values';
title 'LAPLACE PDF';
hold off;
end
