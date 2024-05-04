function gifsave(gcx,stroutname_noext,dura,frameid)
    F=getframe(gcx);
    I=frame2im(F);
    [I,map]=rgb2ind(I,256);
    if frameid == 1
        imwrite(I,map,[stroutname_noext,'.gif'],'gif', 'Loopcount',inf,'DelayTime',dura);
    else
        imwrite(I,map,[stroutname_noext,'.gif'],'gif','WriteMode','append','DelayTime',dura);
    end
end