#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python examples/NERCRF.py --mode LSTM --num_epochs 200 --batch_size 16 --hidden_size 256 --num_layers 1 \
 --char_dim 30 --num_filters 30 --tag_space 128 \
 --learning_rate 0.01 --decay_rate 0.05 --schedule 1 --gamma 0.0 \
 --dropout std --p_in 0.33 --p_rnn 0.33 0.5 --p_out 0.5 --unk_replace 0.0 --bigram \
 --embedding glove --embedding_dict "D:/glove.6B/glove.6B.100d.txt" \
 --train "D:/CoNLL-2003/train/eng.train" --dev "D:/CoNLL-2003/dev/eng.testa" --test "D:/CoNLL-2003/test/eng.testb"