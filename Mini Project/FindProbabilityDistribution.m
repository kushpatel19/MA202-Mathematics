function [p] = FindProbabilityDistribution(Q,dQ)

sz = size(Q);

d1 = sz(1);
d2 = sz(2);
d = d1*d2;
MaxVal = max(abs(Q(:)));
Q1 = Q/MaxVal;
Q_dummy = -4:dQ:4;
p = zeros(size(Q_dummy));
for k1 = 1:length(Q_dummy)
    [i1,i2] = find(Q1>=Q_dummy(k1)&Q1<Q_dummy(k1)+dQ);
    p(k1) = (length(i1)/d)/(dQ*MaxVal);
end
% p = reshape(p',1,numel(p));
Q2 = Q_dummy*MaxVal;
plot(Q2,p,'r');
ylim([0 1.2]);
end