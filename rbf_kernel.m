function [k] = rbf_kernel(var_0, l)
l=l(:);
    function [K] = kernel(X, X_prime)
        N = size(X,1);
        D = size(X_prime, 1);
        K = zeros(N, D);
        for i=1:N
            for j=1:D 
                x=X(i, :);
                x_prime = X_prime(j,:);
                K(i, j) = var_0*exp(-0.5*(sum( x- x_prime)/l).^2);
            end
        end 
    end 
k=@kernel;
end