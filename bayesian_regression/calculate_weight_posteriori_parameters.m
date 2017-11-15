function[w_N, V_n] = calculate_weight_posteriori_parameters(X, y, var_y, w_0, var_w)
y=y(:);
w_0 = w_0(:);
var_w = diag(var_w);
var_y = diag(var_y);
n = length(y);
d = size(w_0, 1);
phi = [X, ones([size(X,1), 1])];

V_0 = diag(var_w)*eye(d);
Inv = var_y*eye(d)/V_0;
V_n = var_y*eye(d)/(Inv + phi'*phi);

Inv_V = V_n/V_0;
w_N = V_n*Inv_V*w_0 + (1/var_y)*V_n*phi'*y;
