% CDF of CAUCHY Function
function CAUCHYcdf(u,g)
xa = linspace(-10,10,2001);               % 2001 is number of intervals
xb = xa+0.01; 
z=(xa-u)./g;
yab=(1./(pi*g))*(1./(1+(z.^2)));          % CAUCHY function
y(1)=0;
hold on;
for i=1:2001
    y(i+1)=y(i)+(yab(i)*0.01);            % Reimann-sum iterative step
    xz = [xa(i),xb(i)];                   
    yz = [y(i),y(i+1)];                              
    plot(xz,yz,'-b');                     % Plotting each 0.01 gap stepwise
end
xlabel 'x values';
ylabel 'y values';
title 'CAUCHY CDF';
end