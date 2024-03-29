sudo apt install virtualenv apache2 tmux curl sshfs sshpass libsm6 libxrender1 libfontconfig1 ffmpeg
sudo virtualenv --system-site-packages -p python3.9 /home/vll/venv_pytorch1.11
sudo chmod -R 777 /home/vll/venv_pytorch1.11
source /home/vll/venv_pytorch1.11/bin/activate
pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113
pip install pytorch-lightning
pip install -r ${PWD}/vision_package.txt
pip install ruamel.yaml kornia imageio-ffmpeg tensorboardX configargparse
pip install git+https://github.com/pureexe/cluster-dataset
deactivate


