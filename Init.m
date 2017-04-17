%对粒子群进行初始化
function [ pop,v ] = Init( size )

for i=1:size
    %初始化位置
    pop(1,i)=1+rand(1,1)*5;
    pop(2,i)=2+rand(1,1)*7;
    %初始化速度
    v(1,i)=1*(rand(1,1)*2-1);
    v(2,i)=1*(rand(1,1)*2-1);
    
end
end

