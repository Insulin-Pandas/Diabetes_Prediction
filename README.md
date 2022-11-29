# Diabetes_Prediction
Project 4 - Predicting diabetes! 

Project Team Members: Jenny Bedwell, Sheyla Perez, Hector Custodio, Andres Almaraz, Subodh Chintawar, Gary Groscost

Introduction 

Diabetes is a chronic health condition that affects how your body turns food into energy. It is also among the most prevalent chronic diseases in the United States, impacting millions of Americans each year and exerting a significant financial burden on the economy. Marshmellow le Panda is our classes unoffical mascot, and the subject for the story of our data today. This project's overall goal is to utilize the power of machine learning in order to provide a more accurate prediction for detecting diabetes. Diabetes is generally characterized by either the body not making enough insulin or being unable to use the insulin that is made as effectively as needed. We used the CDC’s Behavioral Risk Factor Surveillance System data set from 2015 which surveyed over 250,000 patients for diabetes screening. 

Tools Utilized:
- Python Pandas
- Python Matplotlib
- SQL Database (Postgres)/ AWS
- Tableau
- HTML
- Colab
- Machine Learning

Source

Our group used the <a href="https://www.kaggle.com/code/alexteboul/diabetes-health-indicators-dataset-notebook">Diabetes Health Indicators Dataset</a> from kaggle. The data was collected by the Behavioral Risk Factor Surveillance System (BRFSS) by the CDC in 2015, and contains over 400,000 responses, and has 330 features. 

Project Review

We started our project by uploading our database using pyspark. Once we had all of our infomation uploaded, we began to diagnose Marshmellow using supervised learning, unsupervised learning, and deeplearning. To build the models, we used unserpervised machine learning to find which indicators are imporatnt, or have the most effect in predictings our patient's health. We used a standard scaler to help uniform our data, and prevent any inconsistently high numbers. We then used the PCA function to test 95% of the data, performing a dimensionality reduction and resulting in 19 of 21 of the data set coloumns being flagged as important. Then a TSNE model is applied to help form our clusters. We used the K-means based off the 19 componets, and with the elbow curve we determined the best number of clusters for our data.

In our supervised learning models we used a random forest classifier model feature selection to define the most main features from our data set to help determine the outcomes. The 7 main features that correlated with Diabetes came up to be: BMI, Age, Income, Physical Health, Education, General Health, Mental Health. With those 7 features we ran another random forest test. 

With deep learning we started with three hidden layers, but ened with five in total. We started with using relu for activations and sigmoid for our output. We tested with using the most imporatnt columns which gave worse results than when using all of our data coloumns. After testing several batch sizes to find what is the most accurate, the default batch size at 32 was proven to be the best. We attempted to increase our nodes, but that caused overfitting to the models. To prevent overfitting we used val_losses and dropout layers, and changed the optimizer learning rate. 

Diagnosis 
- We were able to diagnose Marhmellow Le Panda with our random forest class model that he is not diabetic. 

Please visit our website! 
https://insulin-pandas.github.io/Diabetes_Prediction/

Please vist our Dashboard!
https://public.tableau.com/app/profile/sheyla4351/viz/DiabetesDataSet_16690730480460/DiabetesDataStory



