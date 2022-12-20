% SUBMITTED BY - KUSH PATEL (20110131)
% Question -5

% Create a fuunction to call the vale of X0(which contains inputs in order x1 , x2 , c1 , c2) 
% and return the vale of Xr(which return the all values of variables)
function [Xr] = Tutorial_2_Q5(n,X0)
X0 = transpose(X0);
% to print the value of x_r up to long decimal digits
format("long")
Xr = X0;
% Initialize the vales of tolerance and error
err = 1000;
tol = 0.00001;
% Run the while loop to run the iterations 
while err > tol
    f = Func(n,X0);                      % Define a function to determine the matrix F and G
    G = f.G;                             % Assign a matrix G
    F = f.F;                             % Assign a matrix F
    h = -inv(F)*G;                       % Determine the matrix h
    Xr = X0 + h;                         % Determine the next (i+1) values by applying formula 
    err = max(abs((Xr - X0)./(Xr)));     % determine the error by finding the maximum element of array
    X0 = Xr;                             % Assign the Xr to again as a input
end

% Create the function to find the matrix G and F
function val = Func(n,X)
% For creating a matrix G
for i=1:2*n
    y=0;
    for j=1:n
        y = y+ (X(j+n)*(X(j)^(i-1)));
    end
    val.G(i,1) = y - ((1-(-1)^i)/i);
end

% For creating a matrix F
% Determine the values of 1 to n arrays
for g=1:2*n
    for k=(n+1):2*n
        val.F(g,k) =  (X(k-n)^(g-1));
    end
end
% Determine the values of (n+1) to 2*n arrays
for o=1:2*n
    for p=1:n
        val.F(o,p) = ((o-1)* X(p+n)*(X(p)^(o-2)));
    end
end
end
end

