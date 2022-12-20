l = exprnd(10,10000,1);
pd = fitdist(l,'exponential');
randvar = reshape(l',1,numel(l))';
l = 0:0.1:100;
m = exppdf(l,10);
hold on
plot(l,m,'k');
ComputePdf(randvar);
xlim([-40 50]);
ylim([0 .12]);
hold off