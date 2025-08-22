# RepPoints V2: Verification Meets Regression for Object Detection

By Yihong Chen, [Zheng Zhang](https://stupidzz.github.io/), [Yue Cao](http://yue-cao.me/), [Liwei Wang](http://www.liweiwang-pku.com/), [Stephen Lin](https://scholar.google.com/citations?hl=zh-CN&user=c3PYmxUAAAAJ), [Han Hu](https://ancientmooner.github.io/).

We provide supported codes and configuration files to reproduce ["RepPoints V2: Verification Meets Regression for Object Detection"](https://arxiv.org/abs/2007.08508) on COCO object detection and instance segmentation. Besides, this repo also includes improved results for [RepPoints V1](https://arxiv.org/pdf/1904.11490.pdf), [Dense RepPoints](https://arxiv.org/pdf/1912.11473.pdf) (V1,V2). Our code is adapted from [mmdetection](https://github.com/open-mmlab/mmdetection). 

## Introduction

Verification and regression are two general methodologies for prediction in neural networks. Each has its own strengths: verification can be easier to infer accurately, and regression is more efficient and applicable to continuous target variables. Hence, it is often beneficial to carefully combine them to take advantage of their benefits. We introduce verification tasks into the localization prediction of RepPoints, producing **RepPoints v2**. 

RepPoints v2 aims for object detection and it achieves `52.1 bbox mAP` on COCO test-dev by a single model. Dense RepPoints v2 aims for instance segmentation and it achieves `45.9 bbox mAP` and `39.0 mask mAP` on COCO test-dev by using a ResNet-50 model.

<div align="center">
  <img src="demo/reppointsv2.png" width="1178" />
</div>

## Main Results

### RepPoints V2

**ResNe(X)ts:**

Model | Multi-scale training | AP (minival) | AP (test-dev) | Link 
--- |:---:|:---:|:---:|:---:
RepPoints_V2_R_50_FPN_1x | No | 40.9 | --- | [Google](https://drive.google.com/file/d/1QBYTLITOJG5dSjU35YewE9efSCH_VGg2/view?usp=sharing) / [Baidu](https://pan.baidu.com/s/1ZvJ3gk_FVOVHmvmy87cr_w) / [Log](https://drive.google.com/file/d/1Ra2XC-Zjfpx6YG91ZRY_8qI_XnDe_Txu/view?usp=sharing)
RepPoints_V2_R_50_FPN_GIoU_1x | No  | 41.1 | 41.3 | [Google](https://drive.google.com/file/d/1lbYUpvA33GHaEImKRhbR7H5S36Dxubcf/view?usp=sharing) / [Baidu](https://pan.baidu.com/s/1kyt5YNWO-gg_W4iUuwZxiw) / [Log](https://drive.google.com/file/d/1yDwNToYAZdPWTs4vxzbBNqRCLIrRxx_H/view?usp=sharing)
