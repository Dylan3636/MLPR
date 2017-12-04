function [] = plot_weight_posteriori(xs, phi_xs, w_N, V_n, n_w)

plot_line_samples(xs, phi_xs, n_w, w_N, V_n, [0,0,0]);
hold on;
%plot_line_samples(xs, phi_xs, n_w, w_0, diag(var_w)*eye(size(w_0, 1)), [0.5 0.5 0.5]);
hold on;

hold off;

end
