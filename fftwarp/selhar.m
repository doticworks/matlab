function sel=selhar(raw)%select harmonic ???0-15
sel=zeros(1,16);
for j=1:16
    sel(j)=raw(1+(j-1)*60);
end
end
