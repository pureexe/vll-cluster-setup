#users=(support godsom lunark pakkapon need_yakiniku nontawat heisenberg suttisak supasorn mint penguin w nakorn tan)
users=(pakkapon suttisak heisenberg supasorn)

# add vll for environment setup
sudo useradd -m vll
sudo passwd vll
sudo usermod -aG vll ${USER}

# add all user in VLL
for name in ${users[@]}
do
    sudo useradd -m ${name}
    sudo passwd ${name}
    sudo usermod -aG vll ${name}
    usermod -s /bin/bash ${name}
done

