function [newpop] = Wheelselection(pop,fitvalue)
    totalfit=sum(fitvalue);
    fitvalue = fitvalue/totalfit;   %fitvalue變成被選到的機率
    fitvalue=cumsum(fitvalue);      %fitvalue機率累加，各個fitvalue值為由小到大
    [px,py]=size(pop);              %用px儲存pop所含個體數
    ms= sort(rand(px,1));           %隨機選擇生成
    fitin=1;
    newin=1;
    while newin<=px && fitin<=px            %沒選超過族群個體數時執行迴圈
        if ms(newin)<fitvalue(fitin)        %   當隨機所在位置小於fitvalue所在位置把該fitvalue對應的值放入newpop   
            newpop(newin,:)=pop(fitin,:);   %生成新族群
            newin = newin+1;                %新族群各數加一
        else
            fitin=fitin+1;          %隨機所在位置大於的話則檢查下一個位置(fitvalue為零的值不會被選入下一階段)
        end
    end
end