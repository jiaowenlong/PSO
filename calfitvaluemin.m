%CALFITVALUE 计算适应度值
function [ fitvalue,gbestvalue,gbest ] = calfitvaluemin( pop )

[px,py]=size(pop);

%计算所有个体的适应度值
for i=1:py
    fitvalue(i)=3*pop(1,i)^2+4*pop(2,i)+pop(2,i)^2;
end

%每次循环中的群体最优
[gbestvalue,gbestindex]=min(fitvalue);
gbest=pop(:,gbestindex);