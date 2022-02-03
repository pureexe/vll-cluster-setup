users=(godsom lunark penguin pakkapon need_yakiniku nontawat heisenberg suttisak supasorn mint penguin w nakorn tan palakons nessessence)
#users=(pakkapon suttisak heisenberg supasorn)

if test ! -f "password.txt"
then
    echo "please create password.txt"
    exit
fi


# add vll for group environment setup
sudo groupadd vll
sudo mkdir /home/vll/
sudo chmod 777 /home/vll/
sudo chgrp -R vll /home/vll/

# add all user in VLL
default_password=$(cat password.txt)
for name in ${users[@]}
do
    sudo useradd -m ${name}
    echo ${name}:${default_password} | sudo chpasswd
    sudo usermod -aG vll ${name}
    sudo usermod -aG sudo ${name}
    sudo usermod -s /bin/bash ${name}
done

