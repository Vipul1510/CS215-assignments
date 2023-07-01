function THINNING
mean=0;
frequency=zeros(1,26);
rng("default");
 for i=1:100000
  Y=poissrnd(4);
  Z=0;
  for j=1:Y
  X=binornd(1,0.8);
  Z=Z+X;
  end
  mean=mean+Z;
 if(Z<25)
   frequency(ceil(Z+1))=frequency(ceil(Z+1))+1;
 end 
end
for i=1:26
fprintf("FREQUENCY OF %f:",i-1);
fprintf("%f\n",frequency(i));
end
fprintf("MEAN is :%f\n",mean/100000);
end
