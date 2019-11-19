# update ubuntu package
sudo apt-get update

# Install openssh-server
sudo apt-get install openssh-server -y

# enable openssh server startup
sudo systemctl enable ssh

# start openssh server
sudo systemctl start ssh

#update openssh server config to let Ansible server reach destination
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# restart ssh server service
sudo service ssh restart

# set new password for root user temporary
sudo sh -c 'echo root:P@ssw0rd! | chpasswd'

