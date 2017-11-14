function[prob] = bayesian_regression_predict(y, x, w_N, V_N)
[mew, sig] = calculate_bayesian_prediction_parameters(x, sigma_y, w_N, V_N);

prob = exp(log_gaussian_pdf(y, mew, sig));