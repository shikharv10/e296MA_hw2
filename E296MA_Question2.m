close all;
clear;
%(i)
pdf1 = makedist('Exponential','mu',100)

%(ii)
%pdf = pdf(pd,x)

%(iii)
m1 = mean(pdf1)
m2 = median(pdf1)
interq = iqr(pdf1)
variance = var(pdf1)
sd = std(pdf1)
  
%(iv)
Y1 = random(pdf1,[1,2])
Y2 = random(pdf1,[1,10])
Y3 = random(pdf1,[1,1000]);
    
%(v)
figure(1);
histogram(Y3,'Normalization','pd')
title('Histogram of 1000 random sample');
hold on;

x = 0:.1:1000;
pdf_normal = pdf(pdf1,x);
y = histogram(Y3,'Normalization','pd')
plot(x,pdf_normal,'LineWidth',2)

%(vi)
Y4 = random(pdf1,[2,1000]);
Y5 = random(pdf1,[10,1000]);
Y6 = random(pdf1,[1000,1000]);

%(vii)
Y7 = mean(Y4);
Y8 = mean(Y5);
Y9 = mean(Y6);
 
%(viii) 
figure(2)
histogram(Y7)
hold on;
histfit(Y7)
hold on;
title('Histogram of 2*1000 random sample');
figure(3)
histogram(Y8)
hold on;
histfit(Y8)
hold on;
title('Histogram of 10*1000 random sample');
figure(4)
histogram(Y9)
hold on;
histfit(Y9)
hold on;
title('Histogram of 1000*1000 random sample');
%(ix)
 
% The CLT states that as N gets very large, the distribution beccomes similar 
% to a normal distribution. This can be seen in the histograms above. Even though 
% the mean is same for all the samples, the distribution of 2*1000 samples fitted
% is not representing the data perfectly. But for the 1000 * 1000 dataset the 
% distribution is more accurate. 