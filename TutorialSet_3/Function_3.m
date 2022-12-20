    
function  [val , dval] = Function_3(x)
% Q = 5;
% S = 0.0002;
% B = 20;
% n = 0.03;
% 
% % f.val = (n * Q * (B + (2* x))^(2/3) - (sqrt(S) * (B * x)^(5/3)));
% % f.dval = ((4/3) * n * Q * (B + (2 * x))^(1/3)) - ((5/3) * B * sqrt(S) * (B * x)^(2/3));
% 
% % For Question-3
% val = (n * Q * (B + (2* x))^(2/3) - (sqrt(S) * (B * x)^(5/3)));
% dval = ((4/3) * n * Q * (B + (2 * x))^((-1)/3)) - ((5/3) * B * sqrt(S) * (B * x)^(2/3));

% For Question-4
val = exp(-0.5*x) * (4 - x) - 2;
dval = exp((-0.5)*x) * (-3 + (0.5 * x));
end 
    
% function root = Func(x)
% root = sqrt(x)
% end
