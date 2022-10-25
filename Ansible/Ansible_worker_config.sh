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
sudo echo "pega el id_rsa.pub aca" >> authorized_keys
sudo chmod 600 authorized_keys
sudo chown -R $user:$user authorized_keys
sudo mv authorized_keys /home/$user/.ssh/
sudo yum install python3 -y
sudo alternatives --set python /usr/bin/python3
sudo python --version
sudo yum -y install python3-pip
#sudo pip3 install ansible --user
#antes de correr el último comando, cambiate a usuario "nivia"
