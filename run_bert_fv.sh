#!/bin/zsh

export BERT_BASE_DIR=./BERT_BASE_DIR
export BERT_DATA_DIR=./BERT_DATA_DIR

INPUT_DIR=./bert_input_data
OUTPUT_DIR=./bert_output_data
rm -rf $OUTPUT_DIR
mkdir -p $OUTPUT_DIR

# Activate the Anaconda Environment
source /Users/tejas/anaconda3/bin/activate base
python --version

for i in train eval test
do
    python "$BERT_BASE_DIR/extract_features.py" \
           --vocab_file=$BERT_DATA_DIR/vocab.txt \
           --bert_config_file=$BERT_DATA_DIR/bert_config.json \
           --init_checkpoint=$BERT_DATA_DIR/bert_model.ckpt \
           --max_seq_length=128 \
           --batch_size=8 \
           --layers=-1 \
           --input_file=$INPUT_DIR/$i.txt \
           --output_file=$OUTPUT_DIR/$i.jsonlines
done
