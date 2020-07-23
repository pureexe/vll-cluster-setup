sudo apt install python3 python3-pip virtualenv apache2 tmux curl sshfs sshpass libsm6 libxrender1 libfontconfig1 ffmpeg
sudo virtualenv --system-site-packages -p python3 /home/vll/venv_pytorch/
sudo chmod -R 777 /home/vll/venv_pytorch
source /home/vll/venv_pytorch/bin/activate
pip install torch===1.5.0 torchvision===0.6.0 -f https://download.pytorch.org/whl/torch_stable.html
pip install -r ${PWD}/vision_package.txt
pip install git+https://github.com/pureexe/cluster-dataset
deactivate

if test -f "/data/"
then
  sudo cp -r /var/www/html/ /data/html/
  sudo rm -rf /var/www/html/
  sudo ln -s /data/html/ /var/www/  
fi
