n = 10;
n_w= 5;

var_0 = 1^2;
l=1;
var_y = 0.5^2;

X = [linspace(-1, 1, n)];
X = X(:);
y =  2*X.^5 + 1*rand([n, 1]);


xs = linspace(-5, 5, 1000);
xs = xs(:);
ys = 2*xs.^5 + 0*rand([length(xs), 1]);

X_prime = xs;
kernel = rbf_kernel(var_0, l);
K = kernel(X, X);
K_prime_L = kernel(X_prime, X);
K_prime_R = kernel(X, X_prime);
K_prime_prime = kernel(X_prime, X_prime);
[mu, cv] = calculate_gp_parameters(y, var_y, K, K_prime_L, K_prime_R, K_prime_prime);

%plot_gp_samples(xs,n_w, mu, cv, [0.5,0.5,0.5]);
hold on;
scatter(X(:,1), y, 'rx');
[upper_ys, lower_ys]=calculate_gp_error_bars(1, mu, cv);
%[upper_ys, lower_ys] = calculate_gp_confidence_interval(0.45, mu, cv);
%p1=plot(xs,mu,'-black');
shadedErrorBar(xs,mu,[upper_ys-mu])
%p2=plot(xs, upper_ys, 'red');
%p3=plot(xs, lower_ys, 'blue');
hold off;
%legend([p1,p2,p3],{'mean', 'upper bound', 'lower bound'})
