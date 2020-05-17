#this thing work only  fresh HDD, unformated
# https://www.digitalocean.com/community/tutorials/how-to-partition-and-format-storage-devices-in-linux
#6TB HDD
hdd = /dev/sda 
sudo parted ${hdd} mklabel gpt
sudo parted -a ${hdd} mkpart primary 1MiB 1000MiB
sudo parted -a opt ${hdd} mkpart primary ext4 1000MiB