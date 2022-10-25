#!/bin/bash
user=nivia  #poner aca el nombre de su usuario antes de ejecutar el script
sudo yum update -y
sudo useradd $user
sudo echo "$user ALL=(ALL) NOPASSWD:ALL" >> $user 
sudo chown -R root:root $user 
sudo mv $user /etc/sudoers.d/
sudo mkdir /home/$user/.ssh
sudo chown -R $user:$user /home/$user/.ssh
sudo chmod 700 /home/$user/.ssh
sudo ssh-keygen -f id_rsa -t rsa -N ''
sudo chown -R $user:$user id_rsa 
sudo chown -R $user:$user id_rsa.pub
sudo mv id_rsa /home/$user/.ssh/
sudo mv id_rsa.pub /home/$user/.ssh/
sudo sed -i "s/root/$user/g" /home/$user/.ssh/id_rsa.pub
sudo sed -i "s/root/$user/g" /home/$user/.ssh/id_rsa 
sudo chmod 600 /home/$user/.ssh/id_rsa.pub
sudo chmod 600 /home/$user/.ssh/id_rsa
