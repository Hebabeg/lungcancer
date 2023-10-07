# Early Detection of Lung Cancer Using Logistic Regression Algorithm

Introduction

Over the past decade there has been a rise in the number of cancer incidences. In fact a study by researchers from Brigham and Women's Hospital concluded that, with the beginning around 1990, the incidence of early onset cancers has seen a dramatic increase. In February 2022, WHO declared Cancer to be a leading cause of death worldwide, accounting for nearly 10M deaths in the year 2020 with most common causes of cancer deaths being colon and rectum (916K); liver (830K) and breast cancer (685K). Another form of cancer that accounted for a total of 1.8M deaths in the year 2020 was lung cancer which is the focus of this project as evident by the name.

Lung cancer staging

Each type of cancer has its own guidelines for staging. The staging of lung cancer is based on the size of the initial tumor, how far or deep it goes into the surrounding tissue, and whether or not it’s spread to lymph nodes and other organs.

Stage 0 (in-situ): Cancer is in the top lining of the lung or bronchus and hasn’t spread to other parts of the lung or outside of the lung.

Stage I: Cancer hasn’t spread outside the lung.

Stage II: Cancer is larger than Stage I and has spread to lymph nodes inside the lung, or there’s more than one tumor in the same lobe of the lung.

Stage III: Cancer is larger than Stage II, has spread to nearby lymph nodes or structures or there’s more than one tumor in a different lobe of the same lung.

Stage IV: Cancer has spread to the other lung, the fluid around the lung, the fluid around the heart or distant organs.

Early Detection of Lung Cancer

Although cancer cannot be prevented there are quite a few ways that can help reduce it severability and increase chances of survivability, a part of which is associated with early detection. The stage of detection of cancer is one of the main prognostic factors that can make a huge difference in terms of survival. This is even more crucial with types of cancer that show no-to-low symptoms such as lung cancer that is paucisymptomatic. Early stages of lung cancer, when it’s mostly curable with treatments like immunotherapy, chemotherapy, it’s asymptomatic, and takes several years to grow and produce symptoms that may alert the patient.[5] In fact, approximately 60% of lung cancer cases are diagnosed in the locally advanced or advanced stage, until it has already grown to a size that causes symptoms such as cough, pneumonia, shortness of breath, and is headed towards the bloodstream and lymph system.

As for detection of lung cancer, research is being conducted to find ways of detecting it as early as possible to increase the chances of survival. There are several tests and methods that can help in detection of lung cancer:

Markers in Blood and Sputum - Scientists are working towards refining tests of sputum [6] and blood (to check for tumor cells or molecular markers) that could be used to detect lung cancer early.

CT Scan - Low-dose CT scans are being used to screen for lung cancer in people with a history of heavy smoking.

Problem Statement

Lung cancer is the topmost reason for cancer deaths worldwide. The number can be reduced with an early diagnosis so that suitable treatment can be administered by healthcare professionals within specified time

Understanding the data

The last column of the data (before preprocessing) contains information whether or not the person has lung cancer. Here’s an overview of how the data is represented:

Gender: M( - male), F( - female)
Age: Number
Smoking?: YES = 2 , NO = 1.
Yellow fingers?: YES = 2 , NO = 1.
Anxiety?: YES = 2 , NO = 1.
Peer pressure?: YES = 2 , NO = 1.
Chronic Disease?: YES = 2 , NO = 1.
Fatigue?: YES = 2 , NO = 1.
Allergy?: YES = 2 , NO = 1.
Wheezing?: YES = 2 , NO = 1.
Alcohol?: YES = 2 , NO = 1.
Coughing?: YES = 2 , NO = 1.
Shortness of Breath?: YES = 2 , NO = 1.
Swallowing Difficulty?: YES = 2 , NO = 1.
Chest pain?: YES = 2 , NO = 1.
Lung Cancer?: YES= 1, NO= -1

Proposed Methodology

The flowchart below summarizes the steps involved in the project. The proposed methodology built here contains 5 phases. At first, we split the data into train and test sets (post minor pre-processing - not mentioned in the flowchart). Then  we  pre-process the data by analyzing the data at hand. Next, we train the model using a logistic regression algorithm for classification and then evaluate the model with test data.

![image](https://github.com/Hebabeg/lungcancer/assets/56575179/917ac991-52f8-4814-9b9b-d2c6f303d8e9)

Experimental Results

The algorithm under supervised learning was able to draw patterns and conclusions and use that knowledge on the test data provided to yield the chances of contracting one of the most fatal diseases. The model was successfully trained with training time of about 3.03s and a prediction speed of ~18K observations/s

Performance Evaluation

To perform the evaluation two different measures were used: Accuracy and AUC. Although accuracy has always been widely used as a performance measure in classification problems, it ignores the probability estimations of classification in favor of class labels, which is why I have added two additional performance measures - confusion matrix [12] and the ROC (Receiver Operator Curve) - AUC (area under the ROC curve).

Confusion Matrix

The four basic terms to understand a confusion matrix are true positives (TP), true negatives (TN), false positives (FP) and false negatives (FN). A true positive (TP) is where the prediction (Yes) matches with the actual value. Similarly, true negative (TN) is where prediction (No) matches the actual value. False positive (FP) is where the predicted value is a Yes but the actual value is No. False negative (FN) is where the predicted value is No but the actual value is a Yes.

![image](https://github.com/Hebabeg/lungcancer/assets/56575179/5c25c9bd-a0a1-4d5e-a244-c73b8dfe4d9c)

![image](https://github.com/Hebabeg/lungcancer/assets/56575179/320fa996-fb63-4921-8b1b-3cd6a49aff60)

Area Under ROC Curve

The ROC curve depicts the true positive rate (TPR) versus the false positive rate (FPR) for different thresholds of classification scores, computed by the currently selected classifier. The Model Operating Point (MOP) shows the FPR and TPR corresponding to the threshold used by the classifier to classify an observation.

AUC corresponds to the integral of a ROC curve (True Positive Rate) with respect to False Positive Rate from 0 to 1. It’s a measure of the overall quality of the classifier, larger AUC values indicate better classifier performance.

![image](https://github.com/Hebabeg/lungcancer/assets/56575179/87030e58-e337-48b5-875f-cf1bfc82985e)

Area under the ROC curve (AUC) is a measure of how well a classification model can distinguish between two groups (diseased vs normal). Along with this, use of a confusion matrix provides insights into the harmonic mean of Precision (Positive Predictive Value) and Recall (True Positive Rate). The current model has an AUC = .888 which essentially means that there’s an 88.8% chance that our current model will be able to distinguish between positive class and negative class, which is actually pretty great for such a simple algorithm.

Comparison between algorithms

With 93.5% validation and 93.3% test accuracy, our  model seems to be working better than the others, in this case. Here’s a quick overview of the accuracy of different trained models in comparison to regularized logistic regression:

![image](https://github.com/Hebabeg/lungcancer/assets/56575179/29086ff1-c333-4bb3-a797-e0f7b432cdbd)


The above table is just to show the performance of different algorithms in comparison with logistic regression in terms of accuracy.

