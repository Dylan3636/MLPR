function [] = plot_gp_samples(x, n, mean, cov, colour)
f = gaussian_random_samples(n, mean, cov);
for i=1:n
   plot(x, f,'color', colour);
   hold on;
end
hold off;
end