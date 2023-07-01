function WALKERSHIST
for j=1:10000            %10000walkers
x=0;
  for i=1:1000           %1000 steps
      if(binornd(1,0.5)) %Bionornd give either 0 or 1 with probabilty 0.5
         x=x+(0.001);    %Adds 0.001 if 1
      else
          x=x-(0.001);   %Adds 0.001 if 0
      end   
  end 
  y(j)=x;                %Saving final location of walkers
end
hold on
xlabel("Displacement from x");
ylabel("Frequency of walkers");
title("FINAL LOCATIONS OF RANDOM WALKERS");
histogram(y);            %Histogram of final location
hold off 
end
