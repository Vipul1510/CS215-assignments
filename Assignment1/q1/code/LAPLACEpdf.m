% PDF of LAPLACE Function
function LAPLACEpdf(u,b)
x = -20+u:0.1:20+u;                   
y=(1/(2*b))*(exp((-((abs(x-u))/b))));  % Laplace function
hold on;
plot(x,y);
xlabel 'x values';
ylabel 'y values';
title 'LAPLACE PDF';
hold off;
end
