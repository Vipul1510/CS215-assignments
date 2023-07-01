% CDF of LAPLACE Function
function LAPLACEcdf(u,b)
xa = linspace(-20,20,4001);               % 4001 is number of intervals
xb = xa+0.01;
yab = (1/(2*b))*(exp((-((abs(xa-u))/b))));% Laplace function
y(1)=0;
hold on;
for i=1:4001
    y(i+1)=y(i)+(yab(i)*0.01);            % Reimann-sum iterative step
    xz = [xa(i),xb(i)];                   
    yz = [y(i),y(i+1)];                              
    plot(xz,yz,'-b');                     % Plotting each 0.01 gap stepwise
end
xlabel 'x values';
ylabel 'y values';
title 'LAPLACE CDF';
end
