figure(1), clf

loc = [0 0];
plotB = plot(loc(1), loc(2), 'k', 'Marker','o','MarkerSize',20,'MarkerFaceColor','g','LineWidth',1)


set(gca, "xlim", [-30 30], "ylim", [-30 30], "xtick", [], "ytick", [])
hold on

plot([-25 25], [-25 -25], "k","LineStyle","--")
plot([-25 25], [25 25], "k","LineStyle","--")
plot([-25 -25], [-25 25], "k","LineStyle","--")
plot([25 25], [-25 25], "k","LineStyle","--")
plot([-20 -20], [-20 20], "k","LineStyle","--")
plot([20 20], [-20 20], "k","LineStyle","--")
plot([-20 20], [-20 -20], "k","LineStyle","--")
plot([-20 20], [20 20], "k","LineStyle","--")

while 1
    dec    = rem(now,1) * 70000;
    loc(1) = loc(1) + sin(dec) + randn;
    loc(2) = loc(2) + cos(dec) + randn;
    
  
    if loc(1)<-30 
        loc(1) = -29;
    end
    if loc(1)>30
        loc(1) = 29;
    end
    if loc(2)<-30
        loc(2) = -29;
    end
    if loc(2)>30
        loc(2) = 29;
    end
    
    if any(loc<-25) || any(loc>25)
        set(plotB,'MarkerFaceColor','r','LineWidth',2)
    elseif any(loc<-20) || any(loc>20)
        set(plotB,'MarkerFaceColor','b','LineWidth',3)
    else
        set(plotB,'MarkerFaceColor','g','LineWidth',1)
    end
        
        
    set(plotB, "XData", loc(1), "YData", loc(2))
    pause(.05)

end