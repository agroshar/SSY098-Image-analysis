function filtered_image = gaussian_filter(image, std)
%gaussian_filter filter a given image with a gaussian filter

    if (std < 4) %standard deviation should not be less than 4
        std = 4;
    end

    g = fspecial('gaussian', size(image), std); % create filter
   
    filtered_image = imfilter(image, g, 'symmetric'); %apply filter
end

