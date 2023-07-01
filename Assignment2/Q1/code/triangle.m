function triangle
rng(0);             % Fixed seed as hard-coded integer
N = 1e7;            % Defined N
e=exp(1);           % Defined value of e
points=zeros(N,2);  % Empty matrix of size Nx2
for i=1:N
    a=pi*rand;      % random x value in the rectangle [0,pi] x [0,e]
    b=rand*e;       % random y value in the rectangle [0,pi] x [0,e]
    x1=a;
    y1=b;
    if(b-3*a*e/pi >= 0) % Flipped the point inside if it is outside the given triangle
      y1=e-b;
      x1=pi/3 - a;
    end
    if((b+ 3*a*e/(2*pi)) >= 3*e/2) % Flipped the point inside if it is outside the given triangle
       y1=e-b;
       x1=4*pi/3 -a;  
    end
    points(i,1)=x1; % Added x coordinate to matrix
    points(i,2)=y1; % Added y coordinate to matrix
end
hold on;
histogram2(points(:,1),points(:,2),'DisplayStyle','tile')
title('Random points inside triangle')
hold off
end