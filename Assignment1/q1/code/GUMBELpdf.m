% PDF of GUMBEL Function
function GUMBELpdf(u,b)
x = -5:0.1:25; 
z=(x-u)/b;
y=(1/b)*(exp(-(((z))+(exp(-z)))));  % GUMBEL function
hold on;
plot(x,y);
xlabel 'x values';
ylabel 'y values';
title 'GUMBEL PDF';
hold off;
end