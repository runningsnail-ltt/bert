export BERT_Chinese_DIR=/data2/tingting66/project/deep_ner/deep-baseline/coding/data/chinese_roberta_wwm_ext_L-12_H-768_A-12
export Demo_DIR=data

python extract_features.py \
  --input_file=./tmp.txt \
  --output_file=$Demo_DIR/output.json \
  --vocab_file=$BERT_Chinese_DIR/vocab.txt \
  --bert_config_file=$BERT_Chinese_DIR/bert_config.json \
  --init_checkpoint=$BERT_Chinese_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --batch_size=32 \
  --layers=-1

