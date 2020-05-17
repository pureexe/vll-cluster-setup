#this thing work only  fresh HDD, unformated
# https://www.digitalocean.com/community/tutorials/how-to-partition-and-format-storage-devices-in-linux
#6TB HDD
hdd=/dev/sda 
sudo parted ${hdd} mklabel gpt
sudo parted ${hdd} mkpart primary ext4 1MiB 1000Gib
sudo parted ${hdd} mkpart primary ext4 1000Gib 100%
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda2
echo "${hdd}1 /home2             ext4    defaults              0       0" | sudo tee -a /etc/fstab
echo "${hdd}2 /data             ext4    defaults              0       0" | sudo tee -a /etc/fstab
sudo mkdir -p /home2
sudo mkdir -p /data
sudo mount ${hdd}1 /home2
sudo mount ${hdd}2 /data
