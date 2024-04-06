function pop2=decimalChromo(pop,spoint,length)
    pop1=pop(:,spoint:spoint+length-1);
    pop2=decodeBinary(pop1);
end