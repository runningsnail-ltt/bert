export BERT_Chinese_DIR=/data2/tingting66/project/deep_ner/deep-baseline/coding/data/chinese_roberta_wwm_ext_L-12_H-768_A-12
export Demo_DIR=data

python run_classifier_demo.py \
  --task_name=demo \
  --do_train=true \
  --do_eval=true \
  --data_dir=$Demo_DIR \
  --vocab_file=$BERT_Chinese_DIR/vocab.txt \
  --bert_config_file=$BERT_Chinese_DIR/bert_config.json \
  --init_checkpoint=$BERT_Chinese_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0 \
  --output_dir=demo_output
