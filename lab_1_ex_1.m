%H = fspecial('motion',20,45);
%%% The SIFT descriptor %%%

%%% ex 1.1
% make a function for creating image patches get_patch.m
img_path = 'stuff_for_lab_1/paper_with_digits.png';
raw_image = imread(img_path);
img = im2double(raw_image);

% test get_patch.m with rgb image
img_patch = get_patch(img, 800, 600, 400);
%imagesc(img_patch);

% test get_image.m with gray scale image
img_gray = mean(img, 3);
%imagesc(img_gray);
img_gray_patch = get_patch(img_gray, 800, 600, 400);
%imagesc(img_gray_patch);
%colormap gray


%%% ex 1.2

test_image = reshape((11:100), 10, 9);
%img_test = im2double(test_image);

% test get_patch.m with test_image image
img_patch = get_patch(test_image, 8, 2, 1);
%imagesc(img_patch)

%%% ex 1.3
% add error message to get_patch.m when patch does not fit in image
%img_patch = get_patch(test_image, 8, 2, 2); % hits the error


%%% Gradient histograms %%%

%%% ex. 1.4
% create a function gaussian_filter.m
img_gray = mean(img, 3);
%imagesc(img_gray);
img_gray_filtered = gaussian_filter(img_gray, 4.0);
%imagesc(img_gray_filtered);
%colormap gray


%%% ex 1.5
% create a function gaussian_gradients.m



%%% 1.6 
% plot the gradients in the image 



%%% 1.7 
% create a function gradient_histogram.m



%%% A SIFT-like descriptor %%%


%%% 1.8
%image_centers = place_region([1290, 950], 50);
%plot_squares(img, image_centers, 50)

%%% 1.9


%%% Digit classification


%%% 1.10
prepare_digits

%%% 1.11


%%% 1.12


%%% 1.13
centers = zeros(2,4);
radiuses = zeros(1,4);
centers(:,1) = [1290, 950]; % it is 2
centers(:,2) = [820, 875]; % it is 4 
centers(:,3) = [220, 570]; % it is 3
centers(:,4) = [170, 330]; % it is 9

radiuses(1) = 38;
radiuses(2) = 30;
radiuses(3) = 24;
radiuses(4) = 13;

%regions1 = place_regihelp ons(centers(:,4), 13);
%plot_squares(img, regions1, 13)

label1 = classify_paper_with_digits(img_gray, digits_training, centers(:,1), radiuses(1));
label2 = classify_paper_with_digits(img_gray, digits_training, centers(:,2), radiuses(2));
label3 = classify_paper_with_digits(img_gray, digits_training, centers(:,3), radiuses(3));
label4 = classify_paper_with_digits(img_gray, digits_training, centers(:,4), radiuses(4));

%%% Using the SIFT code from vlfeat %%%

%%% 1.14
raw_image = imread('paper_with_digits.png');  % uint8 [0, 255] or uint16 [0, 65535]

raw_image = mean(raw_image, 3);
image = im2double(raw_image); % Convert to double

[coords, descriptors] = extractSIFT(image);


corrs = matchFeatures(descriptors(1), descriptors(2), 'MatchThreshold', 100, 'MaxRatio', 0.7);


%%% 1.15


%%% 1.16


%%% Report %%%






