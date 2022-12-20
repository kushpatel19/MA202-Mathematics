function X = GaussSeidel(A,B)
n = size(B);
p = n(1);
tol = 0.0001;
Err = ones(p,1);
X  = zeros(p,1);
C  = zeros(p,1);

% for m = 1:p % checking strictly diagonally dominant matrix
%         if 2*abs(A(m,m))<= sum(abs(A(m,:))) 
%             disp('Rearrange the equations to make strictly diagonally dominant matrix!!!');
%             disp('Gauss Seidel method cannot be applied.');
%            return
%         end
% end

while max(Err) > tol
    for i = 1:p
        C(i,1) = X(i,1);
        X(i,1) = (1/A(i,i)) * (B(i,1) - sum(A(i,:) * X(:,1)) + A(i,i)*X(i,1));
        Err(i,1) = abs(C(i,1) - X(i,1));
        C(i,1) = X(i,1);
    end
end
end
