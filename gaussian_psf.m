function psf = gaussian_psf(size, sigma)
    % Generate a grid of size x size centered at (0,0)
    [X, Y] = meshgrid(-floor(size/2):floor(size/2), -floor(size/2):floor(size/2));

    % Calculate the Gaussian PSF
    psf = exp(-(X.^2 + Y.^2) / (2 * sigma^2));

    % Normalize the PSF so that the sum of all elements equals 1
    psf = psf / sum(psf(:));
end
