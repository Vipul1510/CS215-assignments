function WALKERSTATISTICS
for j=1:10000
x=0;
rng(100);
  for i=1:1000
      if(binornd(1,0.5))
      x=x+(0.001);
      else
          x=x-(0.001);
      end   
  end 
  y(j)=x;
end
sum=0;
for i=1:10000
    sum = sum + y(i);
end
mean=sum/10000;
varsum=0;
for i=1:10000
    varsum = varsum + (y(i) - mean).^2 ;
end
var=varsum/10000;
fprintf("Mean is %f\n",mean)
fprintf("Varience is %f\n",var)
end