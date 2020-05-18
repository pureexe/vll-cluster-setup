sudo apt install python3 python3-pip virtualenv apache2
sudo virtualenv --system-site-packages -p python3 /home/vll/venv_pytorch/
sudo chmod -R 777 /home/vll/venv_pytorch
source /home/vll/venv_pytorch/bin/activate
pip install torch===1.5.0 torchvision===0.6.0 -f https://download.pytorch.org/whl/torch_stable.html
pip install -r ${PWD}/vision_package.txt
pip install git+https://github.com/pureexe/cluster-dataset
deactivate