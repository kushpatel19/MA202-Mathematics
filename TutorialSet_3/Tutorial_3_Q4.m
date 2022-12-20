% SUBMITTED BY - KUSH PATEL (20110131)
% Tutorial-3
% Question-4

% % Trapezoidal Method 
% function answer = T4_20110131(a,b,n)
% format('long')
% 
% % % Part-a
% % function [f,ddf] = MyFunc(x)
% %     f = (1/(sqrt(2*pi))) * exp((-x^2)/2);
% %     ddf = diff(diff(f));
% % end
% 
% % % Part-b
% % function [f,ddf] = MyFunc(x)
% %     f = exp(-x)/x;
% %     ddf = diff(diff(f));
% % end
% 
% % Part-c
% function [f,ddf] = MyFunc(x)
%     f = sin(x)/x;
%     ddf = diff(diff(f));
% end
% 
% max = 0;
% h = (b-a)/n;
% for j =0:n
%     k = a + j*h;
%     [~,ddf] = MyFunc(k);
%     if abs(ddf)>max
%         max = abs(ddf);
%     else
%         continue
%     end
% end
% err = (((b-a)^3)/(12*n*n))*max;
% tol = 0.001;
% if err < tol
%     x = a;
%     sum = 0;
%     for i = 1:(n-1)
%         x = x+h;
%         [f1,~] = MyFunc(x);
%         sum = sum + f1;
%     end
%     [fa,~] = MyFunc(a);
%     [fb,~] = MyFunc(b);
%     answer = (h/2) * (fa + fb + 2*(sum));
% else
%     disp('Please change the value of n')
% end
% end


% Simpson's 1/3 Integration method
function answer = T4_20110131(a,b,n)
format('long')

% % Part-a
% function [f,ddf] = MyFunc(x)
%     f = (1/(sqrt(2*pi))) * exp((-x^2)/2);
%     ddf = diff(f,4);
% end

% % Part-b
% function [f,ddf] = MyFunc(x)
%     f = exp(-x)/x;
%     ddf = diff(f,4);
% end

% Part-c
function [f,ddf] = MyFunc(x)
    f = sin(x)/x;
    ddf = diff(f,4);
end

max = 0;
h = (b-a)/n;

if rem(n,2)==1
    disp('Enter a valid n!! (Even Number)')
else 
for j =0:n
    k = a + j*h;
    [~,ddf] = MyFunc(k);
    if abs(ddf)>max
        max = abs(ddf);
    else
        continue
    end
end
err = (((b-a)^5)/(180*n^4))*max;
tol = 0.001;
if err < tol
    x = a;
    sumo = 0;
    sume = 0;
    for i = 1:1:(n-1)
        x = x+h;
        [f1,~] = MyFunc(x);
        if rem(i,2) == 1
            sumo = sumo + f1;
        else
            sume = sume + f1;
        end
    end
    [fa,~] = MyFunc(a);
    [fb,~] = MyFunc(b);
    answer = (h/3) * (fa + fb + 4*(sumo) + 2*(sume));
else
    disp('Please change the value of n')
end
end
end
