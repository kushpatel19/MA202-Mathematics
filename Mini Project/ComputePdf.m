function [isDiscrete,x,p] = ComputePdf(Arg1)
sz = size(Arg1);
d1 = sz(1);
d2 = sz(2);
d = d1*d2;
x = reshape(Arg1',1,numel(Arg1)); 
ux = unique(x);
siz = size(ux);
siz1 = siz(1);
siz2 = siz(2);
s = siz1*siz2;
if s/d > 0.99 
    isDiscrete = 0;
else 
    isDiscrete = 1;
end


if (isDiscrete == 1)
    count = 0;
    for i=1:d
        k = x(i);
        for j=1:d
            if x(j) == k
                count = count + 1;
            end
        end
        p(i) = count/d;
        count = 0;
    end
end
if (isDiscrete == 0)
    p = FindProbabilityDistribution(x,0.005);
end


