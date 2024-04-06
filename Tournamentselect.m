function [newpop] = Tournamentselection(pop, fitvalue, groupsize )
    % 初始化选中的个体索引数组
    newpop = zeros(size(pop));
    for i=1:2:groupsize
        index1 = randi(groupsize);
        index2 = randi(groupsize);
        while index2 == index1
            index2 = randi(groupsize);
        end
        if fitvalue(index1)>=fitvalue(index2)
            newpop(i,:)=pop(index1,:);
            newpop(i+1,:)=pop(index1,:);
        else
            newpop(i,:)=pop(index2,:);
            newpop(i+1,:)=pop(index2,:);
        end
end
