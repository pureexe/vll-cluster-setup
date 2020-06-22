# add paritition after install os (if parition already create)
#6TB HDD
hdd=/dev/sda 
echo "${hdd}1 /home2             ext4    defaults              0       0" | sudo tee -a /etc/fstab
echo "${hdd}2 /data             ext4    defaults              0       0" | sudo tee -a /etc/fstab
sudo mkdir -p /home2
sudo mkdir -p /data
sudo mount ${hdd}1 /home2
sudo mount ${hdd}2 /data
