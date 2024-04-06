function [newpop]=crossover(pop,matingProbability)
    [px,py]=size(pop)
    newpop=ones(size(pop)); %生成大小與pop相同之矩陣且內容全為1

    for i=1:2:px-1          %將相鄰兩個個體進行交配
        if rand<matingProbability
            cpoint = round(rand*py);    %由0到基因長度(py)間生成隨機變數
            randomP = rand;
            epoint = round(cpoint + randomP*(py - cpoint));
            newpop(i,:) = [pop(i,1:cpoint),pop(i+1, cpoint+1 : epoint),pop(i,epoint+1:py)];
            newpop(i+1,:) = [pop(i+1,1:cpoint),pop(i, cpoint+1 : epoint),pop(i+1,epoint+1:py)];
        else
            newpop(i,:)=pop(i,:);
            newpop(i+1,:)=pop(i+1,:);
        end
    end
end