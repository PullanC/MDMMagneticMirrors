% Create a Gaussian PSF
psf_size = 21; % Size of the PSF (must be an odd number)
psf_sigma = 3; % Standard deviation of the Gaussian PSF
psf = gaussian_psf(psf_size, psf_sigma);

% Compute the Fourier Transform of the PSF
F_PSF = fft2(psf);

% Shift the zero-frequency component to the center of the spectrum
F_PSF_shifted = fftshift(F_PSF);

% Calculate the magnitude (MTF) and phase (PTF) of the frequency response
MTF = abs(F_PSF_shifted);
PTF = angle(F_PSF_shifted);

% Display the PSF, MTF, and PTF
figure;
subplot(1, 3, 1);
imshow(psf, []);
title('Point Spread Function (PSF)');

subplot(1, 3, 2);
imshow(log(1 + MTF), []);
title('Magnitude (MTF)');

subplot(1, 3, 3);
imshow(PTF, []);
title('Phase (PTF)');
