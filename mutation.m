function [newpop]=mutation(pop,pm)
    [px,py]=size(pop);
    newpop=ones(size(pop));
    for i=1:px
        if rand<pm
            mpoint=round(rand*py);%變異點生成
            if(mpoint<=0)
                mpoint=1;
            end
            newpop(i,:)=pop(i,:);
            %0、1翻轉
            if any(newpop(i,mpoint))==0 
                newpop(i,mpoint)=1;
            else
                newpop(i,mpoint)=0;
            end
        else
            newpop(i,:)=pop(i,:);
        end
    end
end