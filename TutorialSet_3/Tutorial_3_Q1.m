% SUBMITTED BY - KUSH PATEL (20110131)
% Tutorial-3
% Question-1

% Polynomial Interpolation (Lagrange Interpolation)
% Create a fuunction to call the value of N(order),t(Temperature) and return the
% value of v(Specific Volume)
function v = T1_20110131(N,t)
% Given data
T = [700,720,740,760,780];
% to print the value of x_r up to long decimal digits
format('long')
n = size(T);
n = n(2);                    % Define n as a number of column
% Given data
V = [0.0977,0.12184,0.14060,0.15509,0.16643];
% Define a zero row matrix-(1*n)
L = zeros(1,n);
p=1;
q=1;
% Run the iterations of Interpolatrion method 
for i=1:N
    for j=1:N
        if i == j
            continue;
        else
            p = p * (t - T(j));
            q = q * (T(i) -T(j));
        end
    end
    L(1,i) = V(i) * (p/q);
    p=1;
    q=1;
end
v=0;
for k=1:N
    v = v + L(1,k);
end
end


