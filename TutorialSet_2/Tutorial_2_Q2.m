function [x_r] = Tutorial_2_Q2(xi_1,xi)
format("long")
err = 100;
tol = 0.0000001;
while err > tol
    f1 = Func(xi_1);
    f2 = Func(xi);
    x_r = xi - ((f2 * (xi - xi_1))/((f2 - f1)));
    err = abs((x_r - xi)/xi);
    xi_1 = xi;
    xi = x_r;
end
function val = Func(x)
val = ((-2)*(x^6)) - (1.5 * (x^4)) + (10*x) + 2;
end
end