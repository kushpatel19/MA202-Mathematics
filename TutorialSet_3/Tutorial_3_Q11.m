% Submitted By Kush Patel [20110131]
% Tutorial-3
% Question-11

% Using the Trapezoidal method
function ans = T11_20110131(n)

t = [0, 1, 5.5, 10, 12, 14, 16, 18, 20, 24];  % Defining the data points of time as a matrix.
c = [1, 1.5, 2.3, 2.1, 4, 5, 5.5, 5, 3, 1.2]; % Defining the concentration matrix.
for i=1:n+1
    Q(i) = outflow_rate(t(i)); % This for loop assigns values to elements of matrix q(outflow rate at time t)
end
z1 = 0; % The final result (of denominator), using the Trapezoidal method.
for i=1:n
    z1 = z1 + (Q(i)+Q(i+1))*(t(i+1)-t(i))/2;
end
z2 = 0; % The final result (of numerator), using the Trapezoidal method.
for i=1:n
    z2 = z2 + ((Q(i)*c(i)) + (Q(i+1)*c(i+1)))*(t(i+1)-t(i))/2;
end

ans = z2/z1;
end

%% This function defines the outflow rate from the reactor. %%
function y = outflow_rate(t)
y = 20 + 10*(sin((2*pi)*(t-10)/24));
end