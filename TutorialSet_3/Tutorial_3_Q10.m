% SUBMITTED BY - KUSH PATEL (20110131)
% Tutorial-3
% Question-10

% Gauss Seidel Iteration method
% Call the function by giving two matrix as a input  
function Xr = T10_20110131(A,B)
% Matrix A(n*n)
% Matrix B(n*1)             % System Ax=B
n = size(B);                % Calculating the size of matrix B
p = n(1);                   % Define a number of rows in matrix B
tol = 0.0001;               % define a value of tolerance
Err = ones(p,1);            % Define a error column matrix
X  = zeros(p,1);            % Define a initial guess of solution
C  = zeros(p,1);            % Define a dummy column matrix for calculations
% Run a loop to find  final result by applying the condition of Gauss
% Seidel ietration method
while max(Err) > tol
    for i = 1:p
        C(i,1) = X(i,1);
        X(i,1) = (1/A(i,i)) * (B(i,1) - sum(A(i,:) * X(:,1)) + A(i,i)*X(i,1));
        Err(i,1) = abs(C(i,1) - X(i,1));
        C(i,1) = X(i,1);
    end
end
disp('Solution by Gauss Seidel Iteration Method is:')
Xr = X;
end