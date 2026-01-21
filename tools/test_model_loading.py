# test_model_loading.py
import torch
import hydra
from omegaconf import DictConfig
import sys
sys.path.append("/home/eivvic/code/zhangye/Flow-Planner")

# 加载配置文件
config_path = "/home/eivvic/code/zhangye/Flow-Planner/output/outputs/FlowPlannerTraining/flow_planner_standard/2026-01-19_21-43-05/.hydra/config.yaml"
with open(config_path, 'r') as f:
    print("=== Config 文件内容（前100行）===")
    for i, line in enumerate(f):
        if i < 100:
            print(line.strip())
        else:
            break

# 加载检查点
ckpt_path = "/home/eivvic/code/zhangye/Diffusion-Planner/checkpoints/model.pth"
checkpoint = torch.load(ckpt_path, map_location='cpu')

print("\n=== 检查点中的键（前50个）===")
for i, key in enumerate(checkpoint.keys()):
    if i < 50:
        print(key)
    else:
        print("... 还有更多键")
        break

print("\n=== 检查点是否有 'model_state_dict' ===")
if 'model_state_dict' in checkpoint:
    print("有 model_state_dict 键")
    model_keys = list(checkpoint['model_state_dict'].keys())
    print(f"模型参数量: {len(model_keys)}")
    for i, key in enumerate(model_keys[:20]):
        print(f"  {key}")
else:
    print("没有 model_state_dict 键，直接是模型权重")