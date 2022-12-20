% SUBMITTED BY - KUSH PATEL (20110131)
% Question -4
% Create a fuunction to call the vale of x0 and return the vale of x_r
function [x_r] = Tutorial_1_Q4(x0)
% to print the value of x_r up to long decimal digits
format("long")
% Initialize the vales of tolerance and error
tol = 0.000001;
err = 100;
% Run the while loop to run the iterations 
while err > tol  
    [f , df] = Function_3(x0);
    % Check wheather the deriavtive of the function is zero or not
    % otherwise it will retuen infinite value
    if df==0
        x_r = "Please change the initial guess";
        break;
    else
        x_r = x0 - (f/df);
        err = abs((x_r - x0)/(x_r));
        x0  = x_r;
    end
end
% Create the function to find the given function value and it's derivative
function  [val , dval] = Function_3(x)
% % For Question-3
% Q = 5;
% S = 0.0002;
% B = 20;
% n = 0.03;
% val = (n * Q * (B + (2* x))^(2/3) - (sqrt(S) * (B * x)^(5/3)));
% dval = ((4/3) * n * Q * (B + (2 * x))^((-1)/3)) - ((5/3) * B * sqrt(S) * (B * x)^(2/3));

% For Question-4
val = exp(-0.5*x) * (4 - x) - 2;
dval = exp((-0.5)*x) * (-3 + (0.5 * x));
end 
end

