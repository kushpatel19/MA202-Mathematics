% SUBMITTED BY - KUSH PATEL (20110131)
% Tutorial-3
% Question-7

% Polynomial Interpolation (Lagrange Interpolation)
for z=1:4
    a = Interpolation(z,3.2);
    disp('The value of T for x=3.2 and for order') 
    disp(z)
    disp('is ')
     disp(a)
    b = Interpolation(z,2.7);
    disp('The value of T for x=2.7 and for order')
    disp(z)
    disp('is ')
    disp(b)
end

% Create a fuunction to call the value of N(order),x(Distance) and return the
% value of T(temperature)
function t = Interpolation(N,x)
% to print the value of x_r up to long decimal digits
format('long')
% Given data
X = [0,2,4,6,8];
n = size(X);
n = n(2);                 % Define n as a number of column
T = [100,85,70,55,40];
L = zeros(1,n);           % Define a zero row matrix-(1*n)
p=1;
q=1;
% Run the iterations of Interpolatrion method 
for i=1:N
    for j=1:N
        if i == j
            continue;
        else
            p = p * (x - X(j));
            q = q * (X(i) -X(j));
        end
    end
    L(1,i) = T(i) * (p/q);
    p=1;
    q=1;
end
t=0;
for k=1:N
    t = t + L(1,k);
end
% Plotting the figure
plot(X,T,'-s', 'MarkerSize',10,...
    'MarkerEdgeColor','red',...
    'MarkerFaceColor',[1 .6 .6])   
end




