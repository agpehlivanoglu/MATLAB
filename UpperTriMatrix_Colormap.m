colormap jet
UT = zeros(70);
UT2 = zeros(70);
for i=1:70
    for j=1:70
        if i<j
            UT(i,j) = 1.03^sqrt(i*j); % Upper Triangular Matrix burasý, diðeri bonus
        else
            UT2(i,j) = 1.03^70 - 1.03^sqrt(i*j); % 1.03^70 deðeri alabileceði maksimum deðer
        end
    end
end

UT2 = UT + UT2;

figure(1), clf
subplot(121)
imagesc(UT)
axis square, title("Upper-Triangular Matrx")
set(gca, "xtick", [], "ytick", [], "clim", [0 1.03^70])

subplot(122)
imagesc(UT2)
axis square, title("Full Matrx")
set(gca, "xtick", [], "ytick", [], "clim", [0 1.03^70])
            

