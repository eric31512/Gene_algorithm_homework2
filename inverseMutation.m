function [newpop]=mutation(pop,pm)
    [px,py]=size(pop);
    newpop=ones(size(pop));
    for i=1:px
        if rand<pm
            mpoint=round(rand*py);%變異點生成
            randomP = rand;
            epoint = round(mpoint + randomP*(py - mpoint));
            if(mpoint<=0)
                mpoint=1;
            end
            newpop(i,:)=pop(i,:);
            temp=newpop(mpoint:epoint);
            temp1 = flipud(temp);
            newpop(mpoint:epoint)=temp1;
        else
            newpop(i,:)=pop(i,:);
        end
    end
end