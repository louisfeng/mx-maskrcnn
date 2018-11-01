export MXNET_CUDNN_AUTOTUNE_DEFAULT=0
export PYTHONUNBUFFERED=1
export MXNET_ENABLE_GPU_P2P=0
export PYTHONPATH=${PYTHONPATH}:incubator-mxnet/python/


MODEL_DIR=/localdisk/lfeng9/mx-maskrcnn

export CITYSCAPES_DATASET=${MODEL_DIR}/data/cityscape
export CITYSCAPES_RESULTS=data/cityscape/results/pred/ 

# Test
python eval_maskrcnn.py \
    --network resnet_fpn \
    --has_rpn \
    --dataset Cityscape \
    --image_set val \
    --prefix ${MODEL_DIR}/model/mask-rcnn \
    --result_path ${CITYSCAPES_RESULTS} \
    --epoch 0 
#    --gpu 0

#python data/cityscape/cityscapesscripts/evaluation/evalInstanceLevelSemanticLabeling.py
