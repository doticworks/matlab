function [zsh,fsh]=fftcshx(sample)
[z,f]=fftc(sample,5000,6000);
zsh=selhar(z);
fsh=selhar(f);
end
