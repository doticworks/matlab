function rotanimate(z,f,tseq)
    
    told=0;
    for t=tseq
        rotnow=rotchain(f,t)*1i;
        clf
        hold on;
        xlim([-0.6,0.6]);
        ylim([-0.6,0.6]);
        plotzchain(z(1,:).*rotnow,'--y','-y');
        plotzchain(z(2,:).*rotnow,'--g','-g');
        plotzchain(z(3,:).*rotnow,'--r','-r');
        
        title(t);
        drawnow;
        pause((t-told)*80);
        told=t;
    end
end
