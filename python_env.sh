sudo apt install virtualenv
"""
# install tensorflow
tf_version = (1.14 1.15 2.0 2.1)
for version in tf_version
do
    virtualenv /home/vll/venv_tf${version}
    source /home/vll/venv_tf1.14/bin/activate
    pip install tensorflow-gpu==${version}
    pip install -r ${PWD}/vision_package.txt
    deactivate
done
"""

virtualenv /home/vll/venv_torch
source /home/vll/venv_torch/bin/activate
pip install pip install torch===1.5.0 torchvision===0.6.0 -f https://download.pytorch.org/whl/torch_stable.html
pip install -r ${PWD}/vision_package.txt
pip install git+https://github.com/pureexe/cluster-dataset
deactivate