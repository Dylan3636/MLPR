function [] = plot_weight_posteriori(xs, ys, w_0, var_w, w_N, V_n, n_w)

plot_line_samples(xs, n_w, w_N, V_n, [0,0,0]);
hold on;
%plot_line_samples(xs, n_w, w_0, diag(var_w)*eye(2), [0.5 0.5 0.5]);
hold on;

hold off;

end
