#!/bin/sh


python3 -m wandb sweep --project "DLAssignment1" sweep.yaml

python3 main.py --optimizer nadam --epochs 5 --l_rate 0.001 --batch_size 32 --loss squared_error --activation relu --n_hlayers 5 --hlayer_size 128 --initializer random