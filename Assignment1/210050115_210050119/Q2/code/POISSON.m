function POISSON
mean=0;
frequency=zeros(1,26);
rng("default");
for i=1:1000000
X=mod(poissrnd(3),25);
Y=mod(poissrnd(4),25);
Z=X+Y;
mean=mean+Z;
frequency(Z+1)=frequency(Z+1)+1;
end
for i=1:26
fprintf("FREQUENCY OF %f:",i-1);
fprintf("%f\n",frequency(i));
end
fprintf("MEAN is :%f\n",mean/1000000);
end