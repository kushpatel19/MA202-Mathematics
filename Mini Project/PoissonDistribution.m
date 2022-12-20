lambda=100;
RV = poissrnd(lambda,1000,100);
y=poisspdf(RV,lambda);
rv=reshape(RV',1,numel(RV));
x=reshape(y', 1, numel(y));

hold on
ComputePdf(RV);
stem(rv,x,'b','LineWidth',1);
hold off
