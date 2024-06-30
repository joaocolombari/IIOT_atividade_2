<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<p align="center">
  <b> UNIVERSITY OF SÃO PAULO </b>
  <br>
  <b> SCHOOL OF ENGINEERING OF SÃO CARLOS </b>
  <br> <br>
  <img src="https://github.com/joaocolombari/Projeto2023/assets/105496210/b6cf7a10-fe32-4d49-b1be-8d29e147b0ec" width="150">
  <br> <br>
  DEPARTMENT OF ELECTRICAL AND COMPUTER ENGINEERING
  <br>
  SEL5776- Condition Monitoring of Industrial Assets
  <br> <br>
  <b> Practical activity: Final Homework </b>
  <br><br>
  <b>Student: </b> João Victor Colombari Carlet <br><br>
  <b>University ID: </b> 5274502 <br><br>
</p>

<hr>

<h1>IIOT - Final Homework</h1>

<p> This project involves running an AI code using the data and example script made available in the course page. The objective is to retrain the network demonstrated during the lecture on AI. The lecture, presented by MSc. Paulo Monteiro and could be accessed via the provided recording link. The task required utilizing at least two architectures available in MATLAB's Deep Learning toolbox, ensuring the image size is adjusted according to the architecture requirements and modifying the output layer as discussed during the lecture. </p>

<p> The lesson and original code used a newer version of Matlab - 2024a, which is powered with newer features in the Deep Learning Toolbox, namelly imagePretrainedNetwork(), trainnet() and minibatchpredict(), thus the original code is not usable with the students version of the software and adaptations must have been made. These changes are indicated in the code available at this repo.</p>

<h2>Project Structure</h2>

<h3>Step 1</h3>
<ul>
  <li><b>Describe the modifications made for training the network</b>:
    <ul>
      <li>Indicate the image size adjustments.</li>
      <li>Specify which layer had to be altered.</li>
    </ul>
  </li>
</ul>

<h3>Step 2</h3>
<ul>
  <li><b>Compare the execution time of the employed architectures</b>:
    <ul>
      <li>Analyze the execution time in relation to the number of trainable parameters.</li>
    </ul>
  </li>
</ul>

<h3>Step 3</h3>
<ul>
  <li><b>Evaluate the training effectiveness</b>:
    <ul>
      <li>Use a confusion matrix for evaluation.</li>
      <li>Generate the ROC curve for each model.</li>
    </ul>
  </li>
</ul>

<h3>Step 4</h3>
<ul>
  <li><b>Present the results</b>:
    <ul>
      <li>Compile the results in a PDF document.</li>
      <li>Include the scripts used, or alternatively, upload them to GitHub and provide the repository link.</li>
    </ul>
  </li>
</ul>
<h2>Usage</h2>
<ul>
  <li>Ensure you have MATLAB 2022b installed on your machine.</li>
  <li>Clone the repository and navigate to the project directory.</li>
  <li>Run the main script to perform the analysis and generate the plots.</li>
</ul>

<h2>Development and Results</h2>

<h3>Step 1</h3>
<ul>
  <li> As there is no function for importing the pretrained network, manually export a network from the Toolbox to the workspace and save it (net.mat)</li>
  <li> Division of the training and test set - using 80% of the segmented signals for network training and 20 for testing</li> 
  <li> Change the convolutional layer 'conv10' to adapt the number of classes for the bearing problem (3 faults) </li>
  <li> Replace the classification layer </li>
  <li> Train the model using the trainnet function by using 2022b function trainNetwork() function that won't accept "crossentropy" input </li>
  <li> Manually classify images in batches to substitute minibatchpredict() </li>
  <li> Display confusion matrix </li>
</ul>

<h2>Conclusion</h2>
<p></p>

</body>
</html>
