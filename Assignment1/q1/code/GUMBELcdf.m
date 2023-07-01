% CDF of GUMBEL Function
function GUMBELcdf(u,b)
xa = linspace(-20,20,4001);               % 4001 is number of intervals
xb = xa+0.01;
z=(xa-u)/b;
yab=(1/b)*(exp(-(((z))+(exp(-z)))));      % Gumbel function
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
title 'GUMBEL CDF';
end
