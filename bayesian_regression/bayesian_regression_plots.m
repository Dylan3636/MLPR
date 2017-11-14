n = 20;
n_w= 5;
X = linspace(-2, 2, n);
X = X(:);
y =  2*X + 1*rand([n, 1]);
var_y = 0.1;
var_w = [1,4];
w_0 = [0; 5];
[w_N, V_N] = calculate_weight_posteriori_parameters(X, y, var_y, w_0, var_w);
xs = linspace(-15, 15, 100000);
xs=xs(:);
ys = 10*xs + 0.4*rand([length(xs), 1]);
plot_weight_posteriori(xs, ys, w_0, var_w, w_N, V_N, n_w);
hold on;
scatter(X, y, 'rx');
[upper_ys, lower_ys] = calculate_bayesian_regression_confidence_interval(0.01, xs, w_N, V_N, var_y);
plot(xs, upper_ys)
plot(xs, lower_ys)
hold off;