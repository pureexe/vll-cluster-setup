sudo apt install virtualenv apache2 tmux curl sshfs sshpass libsm6 libxrender1 libfontconfig1 ffmpeg
sudo virtualenv --system-site-packages -p python3.9 /home/vll/venv_pytorch1.10
sudo chmod -R 777 /home/vll/venv_pytorch1.9
source /home/vll/venv_pytorch1.9/bin/activate
pip install torch==1.10.2+cu113 torchvision==0.11.3+cu113 torchaudio==0.10.2+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
pip install pytorch-lightning
pip install -r ${PWD}/vision_package.txt
pip install git+https://github.com/pureexe/cluster-dataset
deactivate
