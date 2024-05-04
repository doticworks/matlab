function rotanimate(z,f,tseq)
    size=4e-1;
    vh=[2,4];
    told=0;
    frameid=1; 
    for t=tseq
        rotnow=rotchain(f,t)*1i;
        clf 
        set(gcf,'color','black'); 
        set(gca,'color','black'); 
        set (gca,'xcolor','w','ycolor','w'); 
        hold on; 
        xlim([-size,size]);
        ylim([-size,size]);
        zrot=z.*[rotnow;rotnow;rotnow];
        plotzchain(zrot(1,vh),'--y','-y');
        plotzchain(zrot(2,vh),'--g','-g');
        plotzchain(zrot(3,vh),'--r','-r');
        drawvec(sum(zrot(1:3,4)),'-ow');
        drawvec(sum(sum(zrot(1:3,[2]))),'--ow');
        
        title(t);
        drawnow;
        pause((t-told)*400);
        
        gifsave(gcf,'yynl',0.04,frameid); 
        frameid=frameid+1; 
        
        told=t;
    end
end
