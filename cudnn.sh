
# NVIDIA CDNN
wget http://10.204.100.111/setup/cudnn-11.4-linux-x64-v8.2.2.26.tgz
tar -xzvf cudnn-11.4-linux-x64-v8.2.2.26.tgz
sudo rsync -a cuda/* /usr/local/cuda-11.4
sudo chmod a+r /usr/local/cuda-11.4/include/* /usr/local/cuda/lib64/libcudnn*
rm -rf cudnn-11.4-linux-x64-v8.2.2.26.tgz
rm -rf cuda
