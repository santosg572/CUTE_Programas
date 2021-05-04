% RMN-9.003.pdf

close all
clear all

n = 10000;

%sigma = 2*round(rand(n+1,1))-1 ;
sigma = ones(n+1,1);
%sigma = rand(n,1);
%sigma = randn(n+1,1)

landa = 10*ones(4,n+1);

for k=1:20
    xx = CalU_ES(n, k, landa, sigma);
    landa = CalLan_ES(n, xx,sigma);
    '=========================================',k
end
