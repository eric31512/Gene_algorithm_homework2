function pop2=decodeBinary(pop)
    [px,py]=size(pop);
    for i=1:py
        pop1(:,i)=2.^(py-i).*pop(:,i);
    end
    pop2=sum(pop1,2);   %求每列之和
end