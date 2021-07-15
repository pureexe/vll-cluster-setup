# Remove previous exist driver
sudo apt purge nvidia
sudo apt autoremove
sudo apt purge cuda
sudo apt remove nvidia

# Download & Install CUDA 
wget https://developer.download.nvidia.com/compute/cuda/11.4.0/local_installers/cuda_11.4.0_470.42.01_linux.run
sudo sh cuda_11.4.0_470.42.01_linux.run --silent --driver --toolkit
rm -f cuda_11.4.0_470.42.01_linux.run
