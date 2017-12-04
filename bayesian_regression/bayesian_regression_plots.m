n = 100;
n_w= 5;
bandwidth=0.005;
h=0.1;
X = [linspace(-5, 5, n)];
X = X(:);
y =  2*X + 0*rand([n, 1]);
cs = get_rbf_centres(X, bandwidth);
phi_X = phi_rbfs(X, cs, h);
var_y = 10;
var_w = 100;
w_0 = [zeros([size(phi_X, 2), 1]); 0];
[w_N, V_N] = calculate_weight_posteriori_parameters(phi_X, y, var_y, w_0, var_w);
xs = linspace(-20, 20, 5000);
xs = xs(:);
ys = 2*xs + 0*rand([length(xs), 1]);
phi_xs=phi_rbfs(xs, cs,0.1);
plot_weight_posteriori(xs, phi_xs, w_N, V_N, n_w);
hold on;
scatter(X, y, 'rx');
[upper_ys, lower_ys] = calculate_bayesian_regression_confidence_interval(0.05, phi_xs, w_N, V_N, var_y);
plot(xs, upper_ys)
plot(xs, lower_ys)
legend({'upper bound', 'lower bound'})
hold off;