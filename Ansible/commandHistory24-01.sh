[root@ip-172-31-32-36 kubernetes-multinode-cluster-ansible-aws]# history
    1  yum install ansible -y
    2  ansible --version
    3 mkdir gdg_ansible
    4 cd gdg_ansible/
    3  ansible-config init --disabled > ansible.cfg
    4  vi ansible.cfg

    1  cd /
    2  cd gfg_ansible/
    3  ls
    4  ansible-vault create aws_credentials.yaml
    5  ls
    6  cat aws_credentials.yaml 
    7  ansible-vault
    8  ansibe-vault view aws_credentials.yaml 
    9  ansible-vault view aws_credentials.yaml 
   10  ansible-vault view aws_credentials.yaml 
   11  ansible-vault edit aws_credentials.yaml 
   12  vi create-ec2.yaml 
   13  clear
   14  ansible-playbook create-ec2.yaml 
   15  vi create-ec2.yaml 
   16  ansible-playbook create-ec2.yaml 
   17  cat aws_credentials.yaml 
   18  ansible-playbook --help
   19  clear
   20  ansible-playbook create-ec2.yaml --ask-vault-pass
   21  ansible-playbook create-ec2.yaml --ask-vault-pass
   22  cat ec2_variables.yaml 
   23  ls
   24  vi create-ec2.yaml 
   25  ansible-playbook create-ec2.yaml --ask-vault-pass
   26  cat inventory 
   27  vi create-ec2.yaml 
   28  vi create-ec2.yaml 
   29  ansible-playbook create-ec2.yaml --ask-vault-pass
   30  vi create-ec2.yaml 
   31  ansible-playbook create-ec2.yaml --ask-vault-pass
   32  vi inventory 
   33  history