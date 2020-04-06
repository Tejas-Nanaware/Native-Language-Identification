# Introduction
Create a text classification model that can predict the native language of an author who writes in English. With using the Google's BERT, the vector representations of the authors can be obtained which is fed to Neural Networks and other Prediction Models.   
  
This task was created for the CS585 - Natural Language Processing Fall 2019 Course at Illinois Institute of Technology, Chicago.
  
# Workflow
1. Clone the [BERT repository](https://github.com/google-research/bert) and add it as a git submodule referred as `BERT_BASE_DIR`.  
2. Use the [BERT-Base Uncased model](https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-12_H-768_A-12.zip) that is used as the data files. This is referred as `BERT_DATA_DIR`. [Repo Link](https://github.com/google-research/bert/blob/master/README.md).  
3. Download the [dataset](http://www.cs.iit.edu/~cs585/hw4/hw4-handout.tgz) from the University Repo that is used for training, validation and testing. This is the `data` directory.  
4. Run the `Format Data For Input.sh` that programmatically reformats the data files into the `bert_input_data` and then run the `run_bert_fv.sh` that obtains the feature vector representation for each data into the `bert_output_data` directory.  
5. Apply Prediction models for the prediction `Prediction Models.ipynb` file.  

# Directory Structure
**BERT_BASE_DIR** (The files from the Google's BERT Submodule)  
**BERT_DATA_DIR** (The files from the BERT-Base Uncased Model)  
**data** (The dataset from the University Repository)  
|--lang_id_train.csv  
|--lang_id_eval.csv  
|--lang_id_test.csv  
**bert_input_data** (Formatted files for vector representation)  
|--train.txt  
|--eval.txt  
|--test.txt  
**bert_output_data** (Obtained feature vector representation)  
|--train.jsonlines  
|--eval.jsonlines  
|--test.jsonlines  
*Format Data For Input.sh  
run_bert_fv.sh  
Prediction Models.ipynb*  
