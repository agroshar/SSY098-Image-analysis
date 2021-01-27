test_image = reshape((11:100), 10, 9);

%raw_image = imread('sample_image.png');  % uint8 [0, 255] or uint16 [0, 65535]

%raw_image = mean(raw_image, 3);
%test_image = im2double(raw_image); % Convert to double

figure(1)
imagesc(test_image), colormap gray

figure(2)
%imagesc(filtered_image), colormap gray
[grad_x, grad_y] = gaussian_gradients(test_image, 3.0);
imagesc(test_image), colormap gray
axis image
hold on
quiver(grad_x, grad_y)
hold off



figure(3)
plot_bouquet(test_image, 20.0)
