function v = T6_20110131(N,t)
format('long')
I = [0.25,0.75,1.25,1.5,2.0];
n = size(I);
n = n(2);
V = [20.45,20.6,0.70,1.88,6.0];
L = zeros(1,n);
p=1;
q=1;
for i=1:N
    for j=1:N
        if i == j
            continue;
        else
            p = p * (t - I(j));
            q = q * (I(i) -I(j));
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


