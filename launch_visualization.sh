export HYDRA_FULL_ERROR=1
export NUPLAN_DEVKIT_ROOT="/home/eivvic/code/zhangye/nuplan-devkit"
export PYTHONPATH="${NUPLAN_DEVKIT_ROOT}:${PYTHONPATH}:$(pwd)"

# 确保这两个环境变量也设置好，NuPlan 内部有时会依赖它们
export NUPLAN_MAPS_ROOT="/home/eivvic/data3/nuplan/dataset/maps"
export NUPLAN_DATA_ROOT="/home/eivvic/data3/nuplan/dataset"

# ！！！注意：下面这两行直接写死了绝对路径，不要用变量替换！！！
python $NUPLAN_DEVKIT_ROOT/nuplan/planning/script/run_nuboard.py \
    simulation_path=/home/eivvic/data3/nuplan/exp/exp/simulation/closed_loop_nonreactive_agents/flow_planner/val14/flow_planner_release/module_2026-01-21-19-13-25 \
    scenario_builder.data_root=/home/eivvic/data3/nuplan/dataset/nuplan-v1.1/splits/mini \
    scenario_builder.map_root=/home/eivvic/data3/nuplan/dataset/maps \
    +port=5006