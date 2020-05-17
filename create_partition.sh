#this thing work only  fresh HDD, unformated
# https://www.digitalocean.com/community/tutorials/how-to-partition-and-format-storage-devices-in-linux
#6TB HDD
hdd=/dev/sda 
sudo parted ${hdd} mklabel gpt
sudo parted ${hdd} mkpart primary 1MiB 1000MiB
sudo parted ${hdd} mkpart primary ext4 1000MiB 100%
echo "${hdd}1 /data             ext4    defaults              0       0" | sudo tee -a /etc/fstab
echo "${hdd}2 /data             ext4    defaults              0       0" | sudo tee -a /etc/fstab
sudo mount ${hdd}1 /home2
sudo mount ${hdd}1 /data
