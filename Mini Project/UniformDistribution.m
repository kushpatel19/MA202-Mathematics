RandVar = rand(1000,200);
z = unifpdf(RandVar,0,1);
randv = reshape(RandVar',1,numel(RandVar));
p = reshape(z',1,numel(z));

hold on
ComputePdf(RandVar);
plot(randv,p,'k','LineWidth',1);
xlim([-3 3]);
hold off