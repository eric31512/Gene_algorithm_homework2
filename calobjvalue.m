function [objvalue] = calobjvalue(popX , popY)
    %X,Y limit
    Xrange = 5.5;
    Xmin = -1.5;
    Ymin = -3;
    Yrange = 7;
    %----------
    %將編碼變為10進位所對應的數
    x=decodeChromo(popX,Xrange,Xmin);
    y=decodeChromo(popY,Yrange,Ymin);
    objvalue =round((x-y).^2-x+2*y+sin(x+y)+1,5);
    
end