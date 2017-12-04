function[mu, cv] = calculate_gp_parameters(y, var_y, K, K_prime_L, K_prime_R, K_prime_prime)
N = length(y);
tmp = K_prime_L/(K+var_y*eye(N));
mu = tmp*y;
cv = K_prime_prime - tmp*K_prime_R;


