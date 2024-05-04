function fftcpx(sample)%fftc & plot by 5000/60000
[z,f]=fftc(sample,5000,6000);
plot(f,abs(z))
end