function [x,y]=plotzchain(zchain,lsp1,lsp2)
    [x,y]=buildchain(zchain);
    plot(x,y,lsp1);
    plot([0,x(end)],[0,y(end)],lsp2);
    plot([-0.6,0.6],[y(end),y(end)],lsp2);
end


function [x,y]= buildchain(zchain)
    l=length(zchain);
    x=zeros(1,l);
    y=zeros(1,l);
    for i=1:l
        x(i:l)=(x(i:l)+real( zchain(i)));
        y(i:l)=(y(i:l)+imag( zchain(i)));
    end
    x=[0,x];
    y=[0,y];
end