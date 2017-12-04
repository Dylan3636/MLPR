function [y, x] = gaussian_random_samples(n, mu, sigma)
M = length(mu);
%mu = reshape(mu, [M, 1]);
x=randn(M, n);
y = gaussian_transform(x, mu, sigma);