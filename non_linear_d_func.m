function dx = non_linear_d_func(t,x)
    mu = 2.0;
    dx=zeros(2,1);
    dx(1) = x(2);
    dx(2) = mu*(1-x(1)^2)*x(2)-x(1);
end