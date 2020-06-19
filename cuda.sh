# Remove previous exist driver
sudo apt purge nvidia
sudo apt autoremove
sudo apt purge cuda
sudo apt remove nvidia

# Download & Install CUDA 
wget http://developer.download.nvidia.com/compute/cuda/10.2/Prod/local_installers/cuda_10.2.89_440.33.01_linux.run 
sudo sh cuda_10.2.89_440.33.01_linux.run --silent --driver --toolkit
rm -f cuda_10.2.89_440.33.01_linux.run
