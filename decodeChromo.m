function [x] = decodeChromo(pop,range,lowerBound)
    [px,py]=size(pop);
    %將編碼變為10進位
    temp1=decimalChromo(pop,1,py);
    %將10進位數轉為範圍內的數
    x=temp1*range/(2^py-1)+lowerBound;
    x=round(x,5);
end
