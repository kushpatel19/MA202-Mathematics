% SUBMITTED BY - KUSH PATEL (20110131)
% Tutorial-3
% Question-3

% Trapezoidal Method
% Create a fuunction to call the value of n and return t(Modulus of Toughness)
function t = T3_20110131(n)
% According to the graph (given)
a = 0;
b = 0.25;
% to print the value of x_r up to long decimal digits
format('long')
h = (b-a)/n;        % Calculating the value of h
% Given data
s = [40, 37.5, 43, 52, 60, 55];
sum = 0;            % Define the initial sum = 0
for i=2:n           % Run a loop to fina the summ of all values of f(x)
    sum = sum + s(i);
end
% Calculate the final answer by applying the formula of Trapezoidal rule
t = (h/2) * (s(1) + s(n+1) + 2*(sum));
end