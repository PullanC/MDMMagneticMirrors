% Load the example image
I = imread('cameraman.tif');
I = double(I) / 255; % Normalize the intensity values to the range [0, 1]

% Create a Gaussian PSF
psf_size = 7; % Size of the PSF (must be an odd number)
psf_sigma = 1.5; % Standard deviation of the Gaussian PSF
psf = gaussian_psf(psf_size, psf_sigma);

% Convolve the image with the PSF (blurring the image)
I_blurred = conv2(I, psf, 'same');

% Display the original and blurred images
figure;
subplot(1, 2, 1); imshow(I); title('Original Image');
subplot(1, 2, 2); imshow(I_blurred); title('Blurred Image');

