# Enable Ansible package in repository
sudo apt-get install software-properties-common -y
sudo apt-add-repository -y ppa:ansible/ansible

# Ubuntu server package update check
sudo apt-get update

# Install Ansible
sudo apt-get install ansible -y

# copy hosts file
sudo cp -f ./hosts /etc/ansible/hosts

# generate new ssh-key
ssh-keygen -b 2048 -t rsa -q -N ""

# copy generated ssh-key to remote server
ssh-copy-id -i ~/.ssh/id_rsa.pub root@192.168.0.200

# start Ansible playbook with 5 sn delay
read -p "Create Postgresql Installation process will be start in 5 sn" -t 5

# start Ansible playbook to install remote server postgresql
ansible-playbook createpostgresql.yml
