function rotanimate(z,f,impi,tseq)%tseq=5000Hz
    
    told=0;
    frameid=1;
    for t=tseq
        rotnow=rotchain(f,t)*1i;
        clf
        set(gcf,'color','black');
        subplot(1,2,1);
        subplot('position', [0.05 0.1 0.35 0.8]);
        set(gca,'color','black');
        set (gca,'xcolor','w','ycolor','w');
        hold on;
        xlim([-0.6,0.6]);
        ylim([-0.6,0.6]);
        [~,ya]=plotzchain(z(1,:).*rotnow,'--y','-y');
        [~,yb]= plotzchain(z(2,:).*rotnow,'--g','-g');
        [~,yc]=plotzchain(z(3,:).*rotnow,'--r','-r');
        yN=ya(end)+yb(end)+yc(end);
        plot([-0.6,0.6],[yN,yN],'-w');
        title(t,'Color','w');
        
        subplot(1,2,2);
        subplot('position', [0.4 0.1 0.55 0.8]);
        set(gca,'color','black');
        hold on;
        xlim([0,tseq(end)]);
        ylim([-0.6,0.6]);
        plot(tseq,impi(1,1:length(tseq)),'y');
        plot(tseq,impi(2,1:length(tseq)),'g');
        plot(tseq,impi(3,1:length(tseq)),'r');
        plot([-0.6,0.6],[ya(end),ya(end)],'-y');
        plot([-0.6,0.6],[yb(end),yb(end)],'-g');
        plot([-0.6,0.6],[yc(end),yc(end)],'-r');
        plot([-0.6,0.6],[yN,yN],'-w');
        plot([t,t],[-0.6,0.6],'-w');
        set(gca,'ytick',[],'xcolor','w')
        drawnow;
        
   %     gifsave(gcf,'yynl',0.04,frameid);
        frameid=frameid+1;
        
        pause((t-told)*200);
        told=t;
    end
end
