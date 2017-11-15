function [] = plot_line_samples(x, phi_xs, n, mean, cov, colour)
w = gaussian_random_samples(n, mean, cov);
X = [phi_xs, ones([size(x, 1), 1])];
for i=1:n
   y = X*w(:, i);
   plot(x, y,'color', colour);
   hold on;
end
hold off;
end