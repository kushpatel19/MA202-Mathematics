% % Section 1 [Discrete] ->Test for Discrete RV with Poisson distribution
% 
% lambda=100;
% RV = poissrnd(lambda,1000,100);
% y=poisspdf(RV,lambda);
% rv=reshape(RV',1,numel(RV));
% x=reshape(y', 1, numel(y));
% 
% hold on
% ComputePdf(RV);
% stem(rv,x,'b','LineWidth',1);
% hold off
% 
% % Section 2 [Continuous] ->Test for Continuous RV with Standerd Normal distribution
% 
% mu = 0;
% sigma = 1;
% RandV =  mu + sigma* randn(1000,100);
% rv  = reshape(RandV',1,numel(RandV))';
% pd = fitdist(rv,'normal');
% s = -4:0.1:4;
% t = normpdf(s,0,1);
% norm_pdf = 1/(sigma*sqrt(2*pi))*exp(-(RandV-mu).^2/(2*((sigma)^2)));
% norm = reshape(norm_pdf',1,numel(norm_pdf));
% 
% hold on
% ComputePdf(RandV);
% % set(gca,'xtick',0:.05:.5);
% % set(gca,'ytick',-4:1:4);
% plot(s,t,'k');
% xlim([-3 3]);
% ylim([0 0.5]);
% hold off
% 
% % Section 3 [Continuous] ->Test for Continuous RV with Exponential distribution
% 
% l = exprnd(10,10000,1);
% pd = fitdist(l,'exponential');
% randvar = reshape(l',1,numel(l))';
% l = 0:0.1:100;
% m = exppdf(l,10);
% hold on
% plot(l,m,'k');
% ComputePdf(randvar);
% xlim([-40 50]);
% ylim([0 .12]);
% hold off
