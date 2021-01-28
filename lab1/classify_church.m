function [label, name] = classify_church(image, feature_collection)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[coords, descriptors] = extractSIFT(image);

for desc = descriptors
    for feat_desc = feature_collection.descriptors

        corr = matchFeatures(desc, feat_desc, 'MatchThreshold', 100, 'MaxRatio', 0.7);
        if (size(corr) > 1)
           label = "Hi";
           name = "Hi y";
        end
    end
end

end

