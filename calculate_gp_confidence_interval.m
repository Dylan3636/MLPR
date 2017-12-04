function [upper_ys, lower_ys] = calculate_gp_confidence_interval(p, mus, cv)
N = length(mus);
upper_ys = zeros([N, 1]);
lower_ys = zeros([N, 1]);
cv=diag(cv);
for i =1:N
    mu = mus(i);
    sigma = sqrt(cv(i));
    upper_ys(i) = icdf('Normal',p,mu,sigma);
    lower_ys(i) = icdf('Normal',1-p,mu,sigma);
    %tmp = sqrt(4*log(1/(sqrt(2*pi*var)*p))*var);
    %upper_ys(i) = mu+tmp;
    %lower_ys(i) = mu-tmp;
end
end