function desc = gradient_descriptor(image, position, radius)
    %gradient_descriptor calculate the histograms of th given patches in
    %the image
    
    std = radius * 0.5; % standard deviation dependant on radius
    
    [grad_x, grad_y] = gaussian_gradients(image, std); % calc image gradient
    
    region_centres = place_regions(position, radius); % calculate regions

    i = 1; % conuter 
    
    desc = zeros(1,72); % init descriptor
    
    for centre = region_centres

        patch_x = get_patch(grad_x, centre(1), centre(2), radius); %get patches from x and y derivative
        patch_y = get_patch(grad_y, centre(1), centre(2), radius);

        desc(((i-1) * 8 +1) : (i * 8)) = gradient_histogram(patch_x, patch_y); % calc and assign to descriptor
        
        i = i + 1;

    end
    
    desc = 1/norm(desc) * desc;
    
end

