function fftcpx(sample)%fftc & plot by 5000/60000
[z,f]=fftcshx(sample);
plot(f,abs(z));
end