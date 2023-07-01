function WHISKERPLOT
rng(0);
for i=1:100
    sum=0;
    for j=1:5
        sum=rand(1,1)+sum;
    end
  aerror(i)=(sum/5)-0.5;
end

for i=1:100
    sum=0;
    for j=1:10
        sum=rand(1,1)+sum;
    end
  berror(i)=(sum/10)-0.5;
end

for i=1:100
    sum=0;
    for j=1:20
        sum=rand(1,1)+sum;
    end
  cerror(i)=(sum/20)-0.5;
end

for i=1:100
    sum=0;
    for j=1:40
        sum=rand(1,1)+sum;
    end
  derror(i)=(sum/40)-0.5;
end

for i=1:100
    sum=0;
    for j=1:60
        sum=rand(1,1)+sum;
    end
  eerror(i)=(sum/60)-0.5;
end

for i=1:100
    sum=0;
    for j=1:80
        sum=rand(1,1)+sum;
    end
  ferror(i)=(sum/80)-0.5;
end

for i=1:100
    sum=0;
    for j=1:100
        sum=rand(1,1)+sum;
    end
  gerror(i)=(sum/100)-0.5;
end

for i=1:100
    sum=0;
    for j=1:500
        sum=rand(1,1)+sum;
    end
  herror(i)=(sum/500)-0.5;
end
for i=1:100
    sum=0;
    for j=1:1000
        sum=rand(1,1)+sum;
    end
  ierror(i)=(sum/1000)-0.5;
end
for i=1:100
    sum=0;
    for j=1:10000
        sum=rand(1,1)+sum;
    end
  jerror(i)=(sum/10000)-0.5;
end
error=[aerror.',berror.',cerror.',derror.',eerror.',ferror.',gerror.',herror.',ierror.',jerror.'];
hold on
xlabel("Experiment number");
ylabel("Errors");
title("Distrubution of errors in Uniform Distribution");
boxplot(abs(error));
hold off