export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export WANDB_API_KEY=null
export HYDRA_FULL_ERROR=1
export PROJECT_ROOT="/home/eivvic/code/zhangye/Flow-Planner" # path to the repo
export SAVE_DIR="/home/eivvic/code/zhangye/Flow-Planner/output" # path to save training results
export TENSORBOARD_LOG_PATH="/home/eivvic/code/zhangye/Flow-Planner/train_log" # path to save tensorboard logs
export TRAINING_DATA="/home/eivvic/data3/nuplan/dataset/preprocess_data/mini" # path to the training data npz
export TRAINING_JSON="/home/eivvic/code/zhangye/Flow/flow_planner_mini.json" # path to the training data list json
export TORCH_LOGS="dynamic,recompiles"

python -m torch.distributed.run --nnodes 1 --nproc-per-node 8 --standalone /home/eivvic/code/zhangye/Flow-Planner/flow_planner/trainer.py --config-name flow_planner_standard