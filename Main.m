function Main(obj)
for i=1:1
    %X,Y limit
    Xrange = 5.5;
    Xmin = -1.5;
    Ymin = -3;
    Yrange = 7;
    %----------
    groupsize = 250;
    chromlengthX = 16;
    chromlengthY = 17;
    crossProbability = 0.85;    %交配機率
    mutationProbability = 0.001;  %突變機率
    popX=round(rand(groupsize,chromlengthX));   %產生X初始群體
    popY=round(rand(groupsize,chromlengthY));   %產生Y初始群體
    for i=1:500
        [objvalue]=calobjvalue(popX,popY);  %計算函數值
        fitvalue=calfitvalue(objvalue)      %計算fitvalue

        %選擇
        [newpopX]=Wheelselection(popX,fitvalue);
        [newpopY]=Wheelselection(popY,fitvalue);
        %交配
        [newpopX1]=crossover(newpopX,crossProbability);
        [newpopY1]=crossover(newpopY,crossProbability);
        %突變
        [newpopX2]=mutation(newpopX1,mutationProbability);
        [newpopY2]=mutation(newpopY1,mutationProbability);
        
        %計算並記錄交配突變後的函數值
        [objvalue]=calobjvalue(newpopX2,newpopY2);
        [bestX(i,:),bestY(i,:),bestValue]=best(newpopX2,newpopY2,objvalue);
        x(i)=i;
        y(i)=bestValue;
        z(i)=sum(objvalue)/groupsize;

        if z(i)<-1.42   %如群體平均小於-1.42表示收斂接近完成，縮小突變率
            mutationProbability=0.0001;
        end
        popX=newpopX1;
        popY=newpopY1;
    end
    plot(x,y);
    hold on
    plot(x,z);
end
