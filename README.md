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

<p> Another version issue is the inability to use a pretrained network besides the squeezenet, since the others are available only for the complete toolbox consumers, which is not the case for those who use the Matlab version provided by STI, thus <b>no comparison can be made</b>. </p>

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

<h3>Step 2</h3>
<ul>
  <li> No comparisson can be made, but the execution time is available in the ROC.png figure</li>
</ul>

<h3>Step 3</h3>
<ul>
  <li> Confusion matrix is displayied in confusion_matrix.png </li>
  <li> The ROC curve is available in ROC.png </li>
</ul>

<h3>Step 4</h3>
<ul>
  <li> Results are displayed in this repo </li>
</ul>

<h2>Conclusion</h2>
<p>This project successfully demonstrates the adaptation and retraining of an AI model using MATLAB's Deep Learning toolbox, despite the constraints posed by using an older software version (2022b). The necessity to replace specific layers highlighted the importance of understanding underlying model architectures, which is made easier with the toolbox, even the author's version. The adaptations made to substitute the unavailable functions were critical in achieving the project's objectives.

Due to version limitations, only the Squeezenet architecture could be utilized, precluding a comprehensive comparison between different pretrained models. Nonetheless, the training process was effectively carried out, and the model's performance was evaluated using a confusion matrix and ROC curve.

The results, including execution times and performance metrics, are thoroughly documented within the repository.</p>

</body>
</html>
