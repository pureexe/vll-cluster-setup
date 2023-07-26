# create environment
sudo virtualenv --system-site-packages -p python3.10 /home/vll/venv_pytorch2.0_py3.10
sudo chmod -R 777 /home/vll/venv_pytorch2.0_py3.10

# activate virtualenv
source /home/vll/venv_pytorch2.0_py3.10/bin/activate

# install pytorch package
pip install torch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 --index-url https://download.pytorch.org/whl/cu118

# install pytorch-related package
pip install pytorch_lightning==2.0.5

# install diffuser-related package
pip install diffusers==0.18.2
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

# cleaning up
deactivate
