% Submitted by Kush Patel (20110131)
% Tutorial -3
% Question - 8

%  Matrix A -- [6 -4 -2
%               0  8  5
%               2  8 -15]
% Matrix B -- [20
%              0
%              20]
% Gauss Elimination Method
% Call the function by giving two matrix as a input
function Xr =Tutorial_3_Q8(A,B)
% Matrix A(n*n)
% Matrix B(n*1)             % System Ax=B
P = [A B];                  % Constructing the new augmented matrix P 
p = size(P);                % Calculating the size of augmented matrix, P
% Check whether all diagonal elements of Matrix P or Matrix A are non zero
for m = 1:p(1) 
    if P(m,m) == 0 
       disp('Gauss elimination method can not applicable. Rearrange the equations!!!');
             %Diagonal element zero. Hence pivote can't be calculated.
       return
    end
end
% Run a loop to perform all steps of Gauss Elimination 
% Finding zeros of lower triangular matrix.
for m = 1:p(1)-1 
    a=P(m,m);  
     P(m,:)= P(m,:)/a;              % Devide all elements by its diagonal element 
     % run a loop to perform a row opertaion 
    for k=m+1:p(1)     
      P(k,:)= P(k,:)- P(k,m)* P(m,:);
    end
end
% Perform a operation on last row
 a=P(p(1),p(1));  
 P(p(1),:)= P(p(1),:)/a;
 s=0;
for m=p(1):-1:2        %Finding the final solutions
    for k=m+1:p(2)
        s=s+P(m-1,k-1)* P(k-1,p(2));
        P(m-1,p(2))= P(m-1,p(2))- s; 
        s=0;
    end
end
disp('Solution by Gauss Elimination Method is:')
  Xr = (P(:,p(2)));
end

% Gauss Seidel Iteration method
% Call the function by giving two matrix as a input  
function Xr = GaussSeidel(A,B)
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
