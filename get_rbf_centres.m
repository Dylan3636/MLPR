function[cs] = get_rbf_centres(x, bandwidth)
x_max = max(x);
x_min = min(x);
c = linspace(x_min, x_max, (x_max-x_min)*1/bandwidth);
cs=reshape(c, size(c));