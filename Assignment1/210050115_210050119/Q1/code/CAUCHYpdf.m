% PDF of CAUCHY Function
function CAUCHYpdf
u=0;                            % Given Location parameter
g=1;                            % Given Scale parameter
x = -5:0.01:5; 
z=(x-u)./g;
y=(1./(pi*g))*(1./(1+(z.^2)));  % CAUCHY function
hold on;
plot(x,y);
xlabel 'x values';
ylabel 'y values';
title 'CAUCHY PDF';
hold off;
end