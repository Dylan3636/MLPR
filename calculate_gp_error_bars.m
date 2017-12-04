function [upper_ys, lower_ys] = calculate_gp_error_bars(alpha, mus, cv)
N = length(mus);
upper_ys = zeros([N, 1]);
lower_ys = zeros([N, 1]);
cv=diag(cv);
for i =1:N
    mu = mus(i);
    sigma = sqrt(cv(i));
    upper_ys(i) = mu+alpha*sigma;
    lower_ys(i) = mu-alpha*sigma;
end
end