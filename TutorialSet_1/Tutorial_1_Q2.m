% SUBMITTED BY - KUSH PATEL (20110131)
% Question - 2
% Create a function to give the input value 
function [x_r] = Tutorial_1_Q2(x0)
% to print the value of x_r up to long decimal digits
format("long")
% Initialize the vales of tolerance and error
tol = 0.00000000001;
err = 1000;

% Checking with the help of Fixed Point Iteration's Method (kindly comment out the code when not
% required)
% Define the initial guess
xi = 1;
% f(x)= x^2 - x0;       Given function
% Run the while loop to run the iterations
while err > tol
    x_r = G(xi);
    err = abs((x_r - xi)/x_r);
    xi = x_r;
end
% Create a function to find the value of G(x(i)) followed by x(i+1)=G(x(i))
function val = G(x)
val = 0.5 * ((x0/x) + x);
end




% % Checking with the help of Newton's Method (kindly comment out the code when not
% % required)
% xi = 1;
% while err > tol  
%     [f , df] = Function_3(xi);
%     % Check wheather the deriavtive of the function is zero or not
%     % otherwise it will retuen infinite value
%     if df==0
%         x_r = "Please change the initial guess";
%         break;
%     else
%         x_r = xi - (f/df);
%         err = abs((x_r - xi)/(x_r));
%         xi  = x_r;
%     end
% end
% % Create the function to find the given function value and it's derivative
% function  [val , dval] = Function_3(x)
% val = x*x - x0;
% dval = 2*x;
% end 
end
