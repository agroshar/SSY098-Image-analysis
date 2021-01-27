function patch = get_patch(image, x, y, patch_radius)
    %Extract a quadratic patch from an image centred at (x,y)
    % with range x/y +/- patch_radius
    if (x-patch_radius > 0 ...
        && y-patch_radius > 0 ...
        && x+patch_radius <= size(image, 2) ...
        && y+patch_radius <= size(image, 1)) % Check if the patch fits inside the image
        
        %Extract patch from image 
        patch = image(y-patch_radius : y+patch_radius, ...
            x-patch_radius : x+patch_radius, :);
      
    else
        error('Patch outside image borders')
    end
end

