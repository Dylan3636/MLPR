function[] =  plot_gaussian_samples(n, mu, cov)
D = gaussian_random_samples(n, mu, cov);
x = squeeze(D(1,:,:));
y = squeeze(D(2,:,:));
scatter(x, y)
end