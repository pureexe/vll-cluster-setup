
# NVIDIA CDNN
wget http://10.204.100.111/setup/cudnn-10.2-linux-x64-v7.6.5.32.tgz
tar -xzvf cudnn-10.2-linux-x64-v7.6.5.32.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
