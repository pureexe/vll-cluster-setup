
# NVIDIA CDNN
wget http://10.204.100.111/setup/cudnn-11.4-linux-x64-v8.2.2.26.tgz
tar -xzvf cudnn-11.4-linux-x64-v8.2.2.26.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
