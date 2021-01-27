function desc = gradient_descriptor(image, position, radius)
    %UNTITLED4 Summary of this function goes here
    %   Detailed explanation goes here
    std = radius;
    
    [grad_x, grad_y] = gaussian_gradients(image, std);
    
    region_centres = place_regions(position, radius);

    i = 1;
    
    desc = zeros(1,72);
    
    for centre = region_centres

        patch_x = get_patch(grad_x, centre(1), centre(2), radius);
        patch_y = get_patch(grad_y, centre(1), centre(2), radius);

        desc(((i-1) * 8 +1) : (i * 8)) = gradient_histogram(patch_x, patch_y);
        
        i = i + 1;

    end
    
    desc = 1/norm(desc) * desc;
    
end

