function rotchain=rotchain(f,t)
rotchain=zeros(1,length(f));
rotchain=exp(1i*2*pi.*f*t);
end
