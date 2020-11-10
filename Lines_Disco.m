%% Lines
% x = [1 10]
% y = [0 1]
% x2 = [2 10]
% y2 = [0 3]
% ...
% x3 = [10 10]
% y3 = [0 10]
% 


clf 

for i = 1:10
    x = [i 10];
    y = [0 i];
    plot(x,y,"w")
    set(gcf, "color", "k")
    axis off
    set(gca, "xlim", [-1 11], "ylim", [-1 11], "xtick", [], "ytick", [])
    hold on
    
end

for j = 1:10
    x = [0 j];
    y = [j 10];
    plot(x,y,"g")
    set(gca, "color", "k")
    hold on
end

for k = 1:10
    x = [10 k];
    y = [0 k];
    plot(x,y,"m")
    set(gca, "color", "k")
    hold on
end


plot(x,y)

% hold on 
% plot(x2, y2)
% hold on
% plot(x3, y3)

