function WALKERTRAVERSAL
x=0:1:1000;              
for i=1:1000               %1000walkers
    y(1)=0;
    for j=1:1000           %1000 steps 
      if(binornd(1,0.5))   %Bionornd give either 0 or 1 with probabilty 0.5 
        y(j+1)=y(j)+(0.001); %Adds 0.001 if 1
      else
        y(j+1)=y(j)-(0.001); %Adds 0.001 if 0
      end 
    end
    ylabel("POSITION");
    xlabel("STEPCOUNT");
    title("WALKER'S PATH");
    plot(x,y);        %Plotting each path for every loop
    hold on;          %To get all paths on same graph
end
end

