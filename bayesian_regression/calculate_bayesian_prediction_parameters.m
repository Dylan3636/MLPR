function[mew, covariance] = calculate_bayesian_prediction_parameters(x, var_y, w_N, V_N)
x=x(:);
mew = x'*w_N;
covariance = x'*V_N*x + var_y;