n = 30;
n_w= 5;
bandwidth=0.01;
X = linspace(-5, 5, n);
X = X(:);
y =  X.^3 + 1*rand([n, 1]);
cs = get_rbf_centres(X, bandwidth);
phi_X = phi_rbfs(X, cs, bandwidth);
var_y = 10;
var_w = 50;
w_0 = zeros([size(phi_X, 2)+1, 1]);
[w_N, V_N] = calculate_weight_posteriori_parameters(phi_X, y, var_y, w_0, var_w);
xs = linspace(-20, 20, 100000);
xs = xs(:);
ys = xs.^3 + 0.4*rand([length(xs), 1]);
phi_xs=phi_rbfs(xs, cs,0.1);
plot_weight_posteriori(xs, phi_xs, w_0, var_w, w_N, V_N, n_w);
hold on;
scatter(X, y, 'rx');
[upper_ys, lower_ys] = calculate_bayesian_regression_confidence_interval(0.0001, phi_xs, w_N, V_N, var_y);
plot(xs, upper_ys)
plot(xs, lower_ys)
hold off;