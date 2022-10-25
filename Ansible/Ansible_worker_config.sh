#!/bin/bash
user=nivia
sudo yum update -y
sudo useradd $user
sudo echo "$user ALL=(ALL) NOPASSWD:ALL" >> $user
sudo chown -R root:root $user
sudo mv $user /etc/sudoers.d/
sudo mkdir /home/$user/.ssh
sudo chown -R $user:$user /home/$user/.ssh
sudo chmod 700 /home/$user/.ssh
sudo echo "borra y pega el id_rsa.pub aca" >> authorized_keys
sudo chmod 600 authorized_keys
sudo chown -R $user:$user authorized_keys
sudo mv authorized_keys /home/$user/.ssh/
