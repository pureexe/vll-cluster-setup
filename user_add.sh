#!/bin/sh

# password is generate from  echo "<DEFAULT PASSWORD HERE>" | openssl passwd -1 -stdin
password=$1$XL98CFTz$nTH0WjjTiUl4nMrA8nksf1
users=(support godsom lunark pakkapon need_yakiniku nontawat heisenberg supasorn mint penguin w nakorn tan)

# add vll for environment setup
sudo useradd vll -p ${password}
sudo usermod -aG vll ${USER}

# add all user in VLL
for name in users 
do
    sudo useradd ${name} -p ${password}
    sudo usermod -aG vll ${name}
done

