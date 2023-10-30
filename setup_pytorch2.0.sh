# remove old crash virtualenv
sudo rm -rf /home/vll/venv_pytorch2.0/
sudo rm -rf /usr/local/bin/virtualenv

# add deadsnakes for python3.11 support
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get -y update

# reinstall virtual env
sudo apt install -y virtualenv

# install python
sudo apt install -y python3.11

# create environment
sudo virtualenv --system-site-packages -p python3.11 /home/vll/venv_pytorch2.0
sudo chmod -R 777 /home/vll/venv_pytorch2.0

# activate virtualenv
source /home/vll/venv_pytorch2.0/bin/activate

# install pytorch package
pip install torch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 --index-url https://download.pytorch.org/whl/cu118

# install pytorch-related package
pip install pytorch_lightning==2.0.5

# install diffuser-related package
pip install diffusers==0.21.0
pip install datasets==2.13.1
pip install accelerate==0.21.0
pip install xformers==0.0.20

# install image-related package
pip install opencv-python==4.8.0.74
pip install imageio==2.31.1
pip install scikit-image==0.21.0

# install machine learning package
pip install scikit-learn==1.3.0

# install utility package
pip install IPython==8.14.0
pip install tensorboard==2.13.0
pip install tensorboardX==2.6.1
pip install matplotlib==3.7.2
pip install natsort

# cleaning up
deactivate
