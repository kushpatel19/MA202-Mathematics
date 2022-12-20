% SUBMITTED BY - KUSH PATEL (20110131)
% Question - 3
% Create a fuunction to call the value of xi_1 and xi and return the vale of x_r
function [x_r] = Tutorial_2_Q3(xi_1,xi)
% to print the value of x_r up to long decimal digits
format("long")
% Initialize the vales of tolerance and error
err = 1000;
tol = 0.000000001;
% Run the while loop to run the iterations 
while err > tol
    f1 = Func(xi_1);
    f2 = Func(xi);
    x_r = xi - ((f2 * (xi - xi_1))/((f2 - f1)));
    err = abs((x_r - xi)/xi);
    xi_1 = xi;
    xi = x_r;
end
% Create the function to find the given function value
function val = Func(x)
val = (7 * exp(-x) * sin(x)) - 1;
end
end