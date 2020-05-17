users=(support godsom lunark pakkapon need_yakiniku nontawat heisenberg supasorn mint penguin w nakorn tan)

# add vll for environment setup
sudo useradd vll -m -p ${password}
sudo usermod -aG vll ${USER}

# add all user in VLL
for name in ${users[@]}
do
    sudo useradd -m ${name}
    sudo passwd ${name}
    sudo usermod -aG vll ${name}
done

