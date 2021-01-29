function [label, name] = classify_church(image, feature_collection)
%classify_church Classify a given image to a collection of features

[coords, descriptors] = extractSIFT(image); % get descriptors for image

labelVote = zeros(1, max(feature_collection.labels)); % init label voting


corr = matchFeatures(descriptors.', feature_collection.descriptors.', ...
    'MatchThreshold', 100, 'MaxRatio', 0.7); % calculate correspondance

for i = corr(:, 2).'  %Voting
    labelVote(feature_collection.labels(i)) = labelVote(feature_collection.labels(i)) + 1;
end

% Get value item with most votes
label = find(labelVote == max(labelVote));

% Get name of the church
name = feature_collection.names(label);

end

