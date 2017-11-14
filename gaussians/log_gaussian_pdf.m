function[log_pdf] = log_gaussian_pdf(x, mew, sig)
x=x(:);
mew=mew(:);
D = length(x);
diff = x-mew;

determinant = det(sig);
[u,s,v] = svd(sig);
sig_inv = v*diag(1./diag(s))*u';

quad = -0.5*diff'*sig_inv*diff;
constant = -0.5*D*log(2*pi) +0.5*log(determinant);

log_pdf = quad+constant;