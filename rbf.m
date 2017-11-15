function [phi] = rbf(x,c,h)
h=h(:);
phi = exp(-(bsxfun(@minus, x, c)/h).^2);

end