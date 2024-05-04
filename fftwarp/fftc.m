function [z,f]=fftc(sample,fs,n)
samfft=fft(sample);
samfft0=[samfft,0];
samfftfld=samfft0+flip(conj(samfft0));
z=samfftfld(1:ceil((n+1)/2))/n;
f=((1:ceil((n+1)/2))-1)*fs/n;
end
