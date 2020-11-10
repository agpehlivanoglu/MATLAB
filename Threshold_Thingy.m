N = 5000; % points
tv = (0:N-1) / (N/10); %time vector
ts = randn(N,1);
ts = detrend(cumsum(ts)); % to make smoother, more auto-correlated

% draw the time series and y=0 line
figure(1), clf, hold on
plot(tv,ts,"k","linew",1)
plot(get(gca,"xlim"), [0 0], "k--")


% find threshold of 10% on both tails of the distribution
tssorted = sort(ts);
thresh(1) = tssorted(round(.1*N));
thresh(2) = tssorted(round(.9*N));

% loop over the two thresholds
for i = 1:2
    
    if i == 1
        beyondthres = ts<thresh(1);
    else
        beyondthres = ts>thresh(2);
    end    
    
    islands = bwconncomp(beyondthres); % what?
    
    % loop through and draw patches to 0
    
   for j = 1: islands.NumObjects
       
       % find xy points
       xpoints = tv(islands.PixelIdxList{j});
       ypoints = ts(islands.PixelIdxList{j});
       
       % draw the patch
       patchcolor = 'rg';
       patch([xpoints xpoints(end:-1:1)], [zeros(1, length(ypoints)) ypoints(end:-1:1)'], patchcolor(i), "facealpha", .5, "linestyle", "none");
   end
   
end

% figure(2)
% plot(tv,beyondthres)




        