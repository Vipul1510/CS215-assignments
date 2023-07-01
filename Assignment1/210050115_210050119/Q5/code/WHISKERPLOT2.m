function WHISKERPLOT2
rng(0);
for i=1:100
    sum=0;
    for j=1:5
        sum=normrnd(0,1)+sum;
    end
  aerror(i)=(sum/5);
end

for i=1:100
    sum=0;
    for j=1:10
        sum=normrnd(0,1)+sum;
    end
  berror(i)=(sum/10);
end

for i=1:100
    sum=0;
    for j=1:20
        sum=normrnd(0,1)+sum;
    end
  cerror(i)=(sum/20);
end

for i=1:100
    sum=0;
    for j=1:40
        sum=normrnd(0,1)+sum;
    end
  derror(i)=(sum/40);
end

for i=1:100
    sum=0;
    for j=1:60
        sum=normrnd(0,1)+sum;
    end
  eerror(i)=(sum/60);
end

for i=1:100
    sum=0;
    for j=1:80
        sum=normrnd(0,1)+sum;
    end
  ferror(i)=(sum/80);
end

for i=1:100
    sum=0;
    for j=1:100
        sum=normrnd(0,1)+sum;
    end
  gerror(i)=(sum/100);
end

for i=1:100
    sum=0;
    for j=1:500
        sum=normrnd(0,1)+sum;
    end
  herror(i)=(sum/500);
end
for i=1:100
    sum=0;
    for j=1:1000
        sum=normrnd(0,1)+sum;
    end
  ierror(i)=(sum/1000);
end
for i=1:100
    sum=0;
    for j=1:10000
        sum=normrnd(0,1)+sum;
    end
  jerror(i)=(sum/10000);
end
error=[aerror.',berror.',cerror.',derror.',eerror.',ferror.',gerror.',herror.',ierror.',jerror.'];
hold on
xlabel("Experiment number");
ylabel("Errors");
title("Distrubution of errors in Gaussian Distribution");
boxplot(abs(error));
hold off