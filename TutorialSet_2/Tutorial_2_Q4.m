% SUBMITTED BY - KUSH PATEL (20110131)
% Question -4


% Newton's Method
% Create a fuunction to call the vale of x0 and return the vale of x_r
function [x_r] = Tutorial_2_Q4(x0)
% to print the value of x_r up to long decimal digits
format("long")
% Initialize the vales of tolerance and error
tol = 0.00001;
err = 100;
% Run the while loop to run the iterations 
while err > tol  
    [f , df] = Function_3(x0);
    % Print all the values of x(i) and f(x(i))
    fprintf('%8.10f   %8.10f\n', [x0, Function_3(x0)])
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
val = exp(x) - x - 1;
dval = exp(x) - 1;
end 
end


% % Modified Newton's Method
% % Create a fuunction to call the vale of x0 and return the vale of x_r
% function [x_r] = Tutorial_2_Q4(x0)
% % to print the value of x_r up to long decimal digits
% format("long")
% % Initialize the vales of tolerance and error
% tol = 0.00001;
% err = 100;
% % Run the while loop to run the iterations 
% while err > tol  
%     [f , df, ddf] = Function_3(x0);
%     % Print all the values of x(i) and f(x(i))
%     fprintf('%8.10f   %8.10f\n', [x0, Function_3(x0)])
%     % Check wheather the deriavtive of the function is zero or not
%     % otherwise it will retuen infinite value
%     if df==0
%         x_r = "Please change the initial guess";
%         break;
%     else
%         x_r = x0 - (f*df)/((df^2)- (f*ddf));
%         err = abs((x_r - x0)/(x_r));
%         x0  = x_r;
%     end
% end
% % Create the function to find the given function value and it's derivative
% function  [val , dval, ddval] = Function_3(x)
% val = exp(x) - x - 1;
% dval = exp(x) - 1;
% ddval = exp(x);
% end 
% end

