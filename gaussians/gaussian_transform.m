function new_x = gaussian_transform(x, mu, sigma)
%n = length(mu);
%mu = reshape(mu, [n, 1]);
[U, S] = svd(sigma);
A = U*sqrt(S);
rot_x = A*x;
new_x = bsxfun(@plus, rot_x, mu);
% a_T = permute(a, [2,1,3]);
% normalizer = ((2*pi)^1/n)*det(sigma);
% fun = sum(bsxfun(@times,a_T, repmat(inv(sigma), 1,1,size(a,3))), 2);
% prob = exp(-0.5*bsxfun(@times,fun, a))./ normalizer;