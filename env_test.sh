#!/bin/bash

## Introduction: test the Python environment for this envionment.

#authors: Huang Lingcao
#email:huanglingcao@gmail.com
#add time: 16 September, 2021


# Exit immediately if a command exits with a non-zero status. E: error trace
set -eE -o functrace

# discriminator.py is missing add, after searching, copy one from https://github.com/qiuye1027/fansCommunity.git
# vgg16.py is missing, after searching and checking, I copy one with Vgg16 classes, from https://github.com/fastai/courses/blob/master/deeplearning1/nbs/vgg16.py



# 1. need tensorflow 1.x, I used tensowflow 1.14 with python 3.7
# 2 Need to install keras==2.2.4, keras==2.2.5 not working.

#### show help
#python train.py --help
#python inference.py --help

# run inference (need to prepare files and folder)
mkdir new_data    # put new files
cp ./img/haze/City01_grid_0460816384.jpg new_data/.
mkdir results-densenet/8 # where saving the results
python inference.py --model model/fog2unfog.pb    # run inference.



