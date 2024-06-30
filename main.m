imds = imageDatastore("train_image/", ...
  'IncludeSubfolders',true, ...
  'LabelSource','foldernames');

% Division of the training and test set. Using 80% of the segmented signals for network training.

[imdsTrain,imdsValidation] = splitEachLabel(imds, 0.8,'randomize');

%%

% Load the Squeezenet network

% THIS FUNCTION THAT HE USES DOES NOT EXIST IN THE VERSION OFFERED BY STI!!
% net = imagePretrainedNetwork("squeezenet");
load('net.mat');

%%

% Network summary

analyzeNetwork(net)

%%

% Change the convolutional layer 'conv10' to adapt the number of classes for the bearing problem (3 faults)

% Count the number of elements in the labels of the network images
numClasses = numel(categories(imdsTrain.Labels));

% Create another convolutional layer to change the number of classes from 1k to 3 (there are three bearing faults)
newConvLayer = convolution2dLayer([1, 1],numClasses,'WeightLearnRateFactor', ...
    10,'BiasLearnRateFactor',10,"Name",'new_conv');
net = replaceLayer(net,'conv10',newConvLayer);

% Replace the classification layer
newClassLayer = classificationLayer('Name', 'new_classoutput');
net = replaceLayer(net, 'ClassificationLayer_predictions', newClassLayer);

%%

% Setup training options
% Configure training options with SGDM (stochastic gradient descent with momentum)

options = trainingOptions('sgdm', ...
  'InitialLearnRate',0.0001, ...
  'MaxEpochs',4, ...
  'Shuffle','every-epoch', ...
  'ValidationData',imdsValidation, ...
  'ValidationFrequency',30, ...
  'Verbose',false, ...
  'MiniBatchSize',20, ...
  'Plots','training-progress');

%%

% Train the model using the trainnet function
% use the imdsTrain set and the net network

% THIS FUNCTION THAT HE USES DOES NOT EXIST IN THE VERSION OFFERED BY STI!!
% net = trainnet(imdsTrain, net, "crossentropy", options);
net = trainNetwork(imdsTrain, net, options);

%%

% Create the Datastore containing the test information

imdsTest = imageDatastore("test_image/", ...
  'IncludeSubfolders',true,'LabelSource','foldernames');

%%

% Verify the accuracy of the model and display the confusion matrix for the test set
% THIS FUNCTION THAT HE USES DOES NOT EXIST IN THE VERSION OFFERED BY STI!!
% scores = minibatchpredict(net,imdsTest,'MiniBatchSize',20);
% YPred = scores2label(scores,unique(imdsTrain.Labels));
% 
% YTest = imdsTest.Labels;
% accuracy = sum(YPred == YTest)/numel(YTest)
% 
% figure
% confusionchart(YTest,YPred)

% Verify the accuracy of the model and display the confusion matrix for the test set

% Initialize variables
YPred = [];
YTest = imdsTest.Labels;
miniBatchSize = 20;

% Classify images in batches
reset(imdsTest);
while hasdata(imdsTest)
    % Read mini-batch of data
    data = read(imdsTest);
    % Classify mini-batch
    scores = classify(net, data, 'MiniBatchSize', miniBatchSize);
    % Accumulate predictions
    YPred = [YPred; scores];
end

% Calculate accuracy
accuracy = sum(YPred == YTest) / numel(YTest);

% Display confusion matrix
figure;
confusionchart(YTest, YPred);
