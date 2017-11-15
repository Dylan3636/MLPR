function[mew, sig] = calculate_bayesian_prediction_parameters(x, sigma_y, w_N, V_N)
x=x(:);
mew = x'*w_N;
sig = x'*V_N*x + sigma_y;