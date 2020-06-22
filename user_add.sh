users=(godsom lunark pakkapon need_yakiniku nontawat heisenberg suttisak supasorn mint penguin w nakorn tan)
#users=(pakkapon suttisak heisenberg supasorn)

# add vll for group environment setup
sudo groupadd vll
sudo mkdir /home/vll/
sudo chmod 777 /home/vll/
sudo chgrp -R vll /home/vll/

# add all user in VLL
for name in ${users[@]}
do
    sudo useradd -m ${name}
    sudo passwd ${name}
    sudo usermod -aG vll ${name}
    sudo usermod -aG sudo ${name}
    sudo usermod -s /bin/bash ${name}
done

