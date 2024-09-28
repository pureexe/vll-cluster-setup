sudo apt install virtualenv apache2 tmux curl sshfs sshpass libsm6 libxrender1 libfontconfig1 ffmpeg

sudo virtualenv --system-site-packages -p python3.11 /home/vll/venv_pytorch2.4.1

sudo chmod -R 777 /home/vll/venv_pytorch2.4.1

source /home/vll/venv_pytorch2.4.1/bin/activate

pip3 install torch==2.4.1 torchvision==0.19.1 torchaudio==0.19.1 --index-url https://download.pytorch.org/whl/cu124

pip install lightning==2.4.0

pip install bitsandbytes==0.44.0

pip install -U transformers==4.45.1 datasets==3.0.1 accelerate==0.34.2 xformers==0.0.28

pip install -U diffusers==0.30.3

pip install natsort
pip install -r ${PWD}/vision_package.txt

pip install ruamel.yaml kornia imageio-ffmpeg tensorboardX configargparse

