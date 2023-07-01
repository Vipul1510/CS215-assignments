% Fuction ellipse
function ellipse
rng(0);               % Fixed seed as hard-coded integer
semiMajorAxis = 1;    % Length of major axis = 2
semiMinorAxis = 0.5;  % Length of major axis = 1
N = 1e7;              % Number sampling points
% Algorithm
t = 2*pi * rand(N,1);   % Generating random theta t
d = sqrt(rand(N,1));    % Taking square root of random number to get uniform distribution
x = semiMajorAxis * d .* cos(t);
y = semiMinorAxis * d .* sin(t);
hold on;
histogram2(x,y,'DisplayStyle','tile')
title('Random points inside ellipse')
hold off
end