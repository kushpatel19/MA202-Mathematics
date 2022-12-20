function [Xr] = Tutorial_2_Q1(X0)
X0 = transpose(X0);
format("long")
Xr = X0;
err = 100;
tol = 0.000001;

while err > tol
    f = Func(X0);
    G = f.G;
    F = f.F;
    h = -inv(F)*G;
    Xr = X0 + h;
    err = max(abs((Xr - X0)./(Xr)));
    X0 = Xr;
end

function val = Func(X)
val.G(1,1) = (X(1) - 4)^2 + (X(2) - 4)^2 - 5;
val.G(2,1) = X(1)^2 + X(2)^2 - 16;
val.F(1,1) = 2 * (X(1) - 4);
val.F(1,2) = 2 * (X(2) - 4);
val.F(2,1) = 2 * X(1);
val.F(2,2) = 2 * X(2);
end
end
