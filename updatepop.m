%更新位置和速度
function [ newpop,newv ] = updatepop( pop,v,pbest,gbest )

[px,py]=size(pop);

%将最大速度绝对值设置为2
vmax=2;

for k=1:py
    %更新速度
    newv(:,k)=0.25*v(:,k)+0.25*rand(1,1)*(pbest(:,k)-pop(:,k))+...
        0.5*rand(1,1)*(gbest-pop(:,k));
    %将超出最大速度的速度值设为最大速度
    if abs(newv(:,k))>vmax
        if newv(:,k)<0
            newv(:,k)=-vmax;
        end
        if newv(:,k)>0
            newv(:,k)=vmax;
        end
    end
    %更新位置
    newpop(:,k)=pop(:,k)+newv(:,k);
    %对超出定义域的位置取定义域边界
    if newpop(1,k)<1
        newpop(1,k)=1;        
    end
    if newpop(1,k)>6
        newpop(1,k)=6;        
    end
    if newpop(2,k)<2
        newpop(2,k)=2;        
    end
    if newpop(2,k)>9
        newpop(2,k)=9;        
    end
end

end

