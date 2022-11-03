cd src
mkdir -p results
mkdir -p results/statistics
mkdir -p results/visualize
mkdir -p results/predictions
mkdir -p results/relation-iou
mkdir -p results/relation

rm results/predictions/*
rm results/relation/*
rm results/relation-iou/*

python3 test_boundary.py --config config/abc.yaml --pretrain ../checkpoints/abc-pretrained.pth
python3 eval_iou.py results/predictions
python3 eval_ap.py results/predictions 1
python3 eval_ap.py results/predictions results/statistics/AP.txt 0
