% SUBMITTED BY - KUSH PATEL (20110131)
% Tutorial-3
% Question-12

% Polynomial Interpolation (Lagrange Interpolation)
for z=1:6
    a = Interpolation_1(z,12);
    disp('The value of W for Sample-1, d=12 and for order') 
    disp(z)
    disp('is ')
    disp(a)
    b = Interpolation_2(z,12);
    disp('The value of W for Sample-2, d=12 and for order') 
    disp(z)
    disp('is ')
    disp(b)
    c = Interpolation_1(z,16);
    disp('The value of W for Sample-1, d=16 and for order') 
    disp(z)
    disp('is ')
    disp(c)
    d = Interpolation_2(z,16);
    disp('The value of W for Sample-2, d=16 and for order') 
    disp(z)
    disp('is ')
    disp(d)
end


k=0;
max1=0;
% For finding maximum of Sample-1
for i =6:0.0001:13
    a = Interpolation_1(6,i);
    if a>max1
        max1 = a;
        k=i;
    else
        continue
    end
end
disp('The approximate maximum average weight of Sample-1 is = ')
    disp(max1)
    disp('for d = ')
    disp(k)

    
z = 0;
max2 = 0;
% For finding maximum of Sample-2
for i =6:0.0001:13
    a = Interpolation_2(6,i);
    if a>max2
        max2 = a;
        z=i;
    else
        continue
    end
end
disp('The approximate maximum average weight of Sample-2 is = ')
    disp(max2)
    disp('for d = ')
    disp(z)

function v = Interpolation_1(N,d)
format('long')
D = [0, 6, 10, 13, 17, 20, 28];
n = size(D);
n = n(2);
W = [6.67, 17.33, 42.67, 37.33, 30.10, 29.31, 28.74];
L = zeros(1,n);
p=1;
q=1;
for i=1:N
    for j=1:N
        if i == j
            continue;
        else
            p = p * (d - D(j));
            q = q * (D(i) -D(j));
        end
    end
    L(1,i) = W(i) * (p/q);
    p=1;
    q=1;
end
v=0;
for k=1:N
    v = v + L(1,k);
end
end


function v = Interpolation_2(N,t)
format('long')
T = [0, 6, 10, 13, 17, 20, 28];
n = size(T);
n = n(2);
V = [6.67, 16.11, 18.89, 15.00, 10.56, 9.44, 8.89];
L = zeros(1,n);
p=1;
q=1;
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
