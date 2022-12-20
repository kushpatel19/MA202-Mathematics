mu = 0;
sigma = 1;
RandV =  mu + sigma* randn(1000,100);
rv  = reshape(RandV',1,numel(RandV))';
pd = fitdist(rv,'normal');
s = -4:0.1:4;
t = normpdf(s,0,1);
norm_pdf = 1/(sigma*sqrt(2*pi))*exp(-(RandV-mu).^2/(2*((sigma)^2)));
norm = reshape(norm_pdf',1,numel(norm_pdf));

hold on
ComputePdf(RandV);
% set(gca,'xtick',0:.05:.5);
% set(gca,'ytick',-4:1:4);
plot(s,t,'k');
xlim([-3 3]);
ylim([0 0.5]);
hold off