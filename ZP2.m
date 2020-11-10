co = [0 0];
plotT = plot(co(1),co(2),"Marker","p","Markersize",20,"MarkerFaceColor","g")
set(gca,"ylim",[-50 50],"xlim",[-50 50], "xtick", [], "ytick", [])
hold on

plot([-40 40], [-40 -40], "k--")
plot([-40 40], [40 40], "k--")
plot([40 40], [-40 40], "k--")
plot([-40 -40], [-40 40], "k--")

while 1
    
    t = rem(now,1) * 70000;
    co(1) = co(1) + sin(t) + randn;
    co(2) = co(2) + sin(t) + randn;
    
    if any(co>40) || any(co<-40)
        set(plotT, "MarkerFaceColor","y")
    else
        set(plotT, "MarkerFaceColor","g")
    end
    
    if co(1) > 50
        co(1) = -49;
    end
    if co(1) < -50
        co(1) = 49;
    end
    if co(2) > 50
        co(2) = -49;
    end
     if co(2) < -50
        co(2) = 49;
    end
    
    
    
   set(plotT, "XData", co(1), "YData", co(2))
   pause(.03)
end



