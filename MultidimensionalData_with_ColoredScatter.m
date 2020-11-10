colormap jet

x = linspace(-1,1,500);
y1 = x.^2;
y2 = sin(3.*x);
y3 = exp(-10*(x.^2)); % 3rd dimension is color
y = [y1; y2; y3];

scatter(y(1,:), y(2,:), 15, y(3,:), "filled")
legend("y_3") % _ sayesinde 3 ü yanýna deðil alt köþesine yazar
xlabel("y_1"), ylabel("y_2")