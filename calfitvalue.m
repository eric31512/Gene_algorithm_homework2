function fitvalue=calfitvalue(objvalue)
    [px,py]=size(objvalue);
    objvalue = -1*objvalue;     %正負顛倒
    for i=1:px
        if objvalue(i)>0.5      %當數值大於1時則放入
            temp = objvalue(i);
        else                    %反之則忽略
            temp = 0;
        end
        fitvalue(i) = temp;
    end

end
