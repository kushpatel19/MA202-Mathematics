% Submitted By Kush Patel [20110131]
% Tutorial-3
% Question-5

% Simpson's 1/3 intergration rule
function answer = T5_20110131(a,b,n)
format('long')

function [f,ddf] = MyFunc(x)
    g = 9.81;
    m = 80;
    c = 10 ;
    f = ((g*m)/c)*(1 - exp(((-c*x)/m)));
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