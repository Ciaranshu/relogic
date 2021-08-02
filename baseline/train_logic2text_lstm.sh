save_dir=checkpoints/logic2text_lstm
mkdir -p $save_dir

CUDA_VISIBLE_DEVICES=1 fairseq-train data-bin/logic2text.sql-en \
    --optimizer adam --lr 0.25 --clip-norm 0.1 --dropout 0.2 --max-tokens 4000 \
    --arch lstm --save-dir $save_dir --save-interval 100 --max-epoch 1000
