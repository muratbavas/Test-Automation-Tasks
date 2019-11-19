# Automation Test

## Project 3: Ansible Project

Copy AnsibleServer folder to ansible server

Copy DestinationServer folder to destination server

Firstly: In Destionation Server, move into DestionationServer folder and run `01-sshinstall_config.sh` script. Script installs SSH server and configures server for remote connection

Secondly: In Ansible Server, move into AnsibleServer/postgresql_install folder and run `01-InstallAnsible.sh` file. Script configures the server and creates key for SSH connection.

Lastly: Go back to Destionation Server, move into DestionationServer folder and run `02-sshlogindisable.sh` script. Script closes the SSH connection and completes the setup.

Every script has its own explanation in it. Thats why did not explained here.