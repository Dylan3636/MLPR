function [upper_ys, lower_ys] = calculate_bayesian_regression_confidence_interval(p, xs, w_N, V_N, sigma_y)
N = length(xs);
upper_ys = zeros([N, 1]);
lower_ys = zeros([N, 1]);
for i =1:N
    x=xs(i,:);
    phi = [x, 1];
    [mew, sig] = calculate_bayesian_prediction_parameters(phi, sigma_y, w_N, V_N);
    tmp = sqrt(2*log(1/(sqrt(2*pi*sig^2)*p))*sig^2);
    upper_ys(i) = mew+tmp;
    lower_ys(i) = mew-tmp;
end
end