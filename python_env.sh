sudo apt install python3 python3-pip virtualenv
sudo virtualenv -p python3 /home/vll/venv_torch
sudo chmod -R 777 /home/vll/venv_torch
source /home/vll/venv_torch/bin/activate
pip install torch===1.5.0 torchvision===0.6.0 -f https://download.pytorch.org/whl/torch_stable.html
pip install -r ${PWD}/vision_package.txt
pip install git+https://github.com/pureexe/cluster-dataset
deactivate