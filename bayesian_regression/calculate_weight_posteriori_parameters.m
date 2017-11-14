function[w_N, V_n] = calculate_weight_posteriori_parameters(X, y, var_y, w_0, var_w)
y=y(:);
w_0 = w_0(:);
var_w = diag(var_w);
var_y = diag(var_y);
n = length(y);

phi = [X, ones([n, 1])];

V_0 = var_w*eye(2);
Inv = var_y*eye(2)/V_0;
V_n = var_y*eye(2)/(Inv + phi'*phi);

Inv_V = V_n/V_0;
w_N = V_n*Inv_V*w_0 + (1/var_y)*V_n*phi'*y;
