# Introduction
Create a text classification model that can predict the native language of an author who writes in English. With using the Google's BERT, the vector representations of the authors can be obtained which is fed to Neural Networks and other Prediction Models.   
  
This task was created for the CS585 - Natural Language Processing Course at Illinois Institute of Technology, Chicago.
  
# Workflow
1. Clone the [BERT repository](https://github.com/google-research/bert) and add it as a git submodule referred as `BERT_BASE_DIR`.  
2. Use the BERT-Base Uncased model that is used as the data files. [Repo Link](https://github.com/google-research/bert/blob/master/README.md), [Download Link](https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-12_H-768_A-12.zip). This is referred as `BERT_DATA_DIR`.  
3. Apply Prediction models for the prediction.  
