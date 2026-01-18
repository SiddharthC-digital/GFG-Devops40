 1  cd /
    2  aws configure
    3  clear
    4  yum install docker -y
    5  systemctl start docker
    6  docker run -p 8080:8080 -p 50000:50000 --name jenkins -dit --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk21
    7  docker ps
    8  wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.rpm
    9  yum install jdk-21_linux-x64_bin.rpm -y
   10  docker ps
   11  yum install git -y
   12  curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
   13  sudo mv /tmp/eksctl /usr/local/bin
   14  eksctl version
   15  curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
   16  chmod +x ./kubectl
   17  sudo mv ./kubectl /usr/local/bin
   18  kubectl version --short --client
   19  eksctl create cluster --name EKS21 --region ap-south-1 --vpc-public-subnets=subnet-0e64ffc947ac8929c,subnet-04c1ed6ba9c55ffd7 --nodegroup-name default-ng --node-type t3.medium --nodes=2 --nodes-min=2 --nodes-max=2 --node-volume-size=20 --ssh-access --ssh-public-key DevOps --managed
   20  kubectl get pods
   21  docker ps
   22  docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
   23  curl -sO http://13.201.56.244:8080/jnlpJars/agent.jar
   24  mkdir data
   25  java -jar agent.jar -url http://13.201.56.244:8080/ -secret 1117fa2e88fef281dc4fa7e92236c6331a476a7722470aaad87d94dcf7b7f7fd -name ec2 -webSocket -workDir "/data" &
   26  npm
   27  cd /
   28  mysql - h database-1.cbaw4kes2epe.ap-south-1.rds.amazonaws.com -u admin -p
   29  yum whatprovides mysql
   30  yum install mariadb105-3:10.5.29-1.amzn2023.0.1.x86_64 -y
   31  mysql - h database-1.cbaw4kes2epe.ap-south-1.rds.amazonaws.com -u admin -p
   32  mysql - h database-1.cbaw4kes2epe.ap-south-1.rds.amazonaws.com -u admin 
   33  mysql -h mariadb105-3:10.5.29-1.amzn2023.0.1.x86_64 -u admin =p
   34  mysql -h mariadb105-3:10.5.29-1.amzn2023.0.1.x86_64 -u admin -p
   35  mysql -h mariadb105-3:10.5.29-1.amzn2023.0.1.x86_64 -u admin -p
   36  mysql -h database-1.cbaw4kes2epe.ap-south-1.rds.amazonaws.com -u admin -p
   37  docker ps
   38  kubectl get pods
   39  kubectl get svc
   40  kubectl get pods
   41  kubectl get pods
   42  kubectl get pods
   43  kubectl get pods
   44  kubectl get svc
   45  kubectl get configmap
   46  kubectl get pods
   47  kubectl get pods
   48  kubectl edit pod web-548f6fcdb9-28sh2
   49  kubectl describe pod node-app-856f855679-67m7k
   50  kubectl get pods
   51  kubectl describe pod node-app-866bd6b9f4-q4bwn
   52  kubectl get pods
   53  kubectl get ns
   54  kubectl get pods -n kube-system
   55  kubectl get ns
   56  kubectl get pods -n kube-node-lease
   57  kubectl get lease -n kube-node-lease
   58  mysql -h database-1.cbaw4kes2epe.ap-south-1.rds.amazonaws.com -u admin -p
   59  kubectll get pods
   60  kubectl get pods
   61  kubectl get pods -n dev
   62  kubectl get svc -n dev
   63  kubectl get svc -n prod
   64  kubectl get pods -n prod
   65  kubectl get pods -n prod
   66  kubectl get pods -n prod
   67  kubectl get pods -n prod
   68  kubectl get pods -n prod
   69  kubectl get svc -n prod
   70  kubectl get pods -n dev
   71  kubectl get prod -n dev
   72  kubectl get pods -n prod
   73  kubectl get pods
   74  kubectl get pods -n default
   75  kubectl describe pod node-app-866bd6b9f4-ckzxd
   76  kubectl get pods -n dev
   77  kubectl get pods -n dev
   78  kubectl get pods -n dev
   79  kubectl get pods -n dev
   80  kubectl get pods -n dev
   81  kubectl get pods -n dev
   82  kubectl get pods -n dev
   83  kubectl describe pod multi-chat-backend-86cdd5c85b-rp2l9
   84  kubectl describe pod multi-chat-backend-86cdd5c85b-rp2l9 -n dev
   85  kubectl get pods -n dev
   86  kubectl describe pod multi-chat-backend-86cdd5c85b-rp2l9 -n dev
   87  kubectl get pods -n dev
   88  kubectl get pods -n dev
   89  kubectl describe pod multi-chat-backend-86cdd5c85b-rp2l9 -n dev
   90  kubectl get pods -n dev
   91  kubectl get pods -n dev
   92  kubectl get pods -n dev
   93  kubectl get pods -n dev
   94  kubectl get pods -n dev
   95  kubectl get pods -n dev
   96  kubectl get pods -n dev
   97  kubectl get svc -n dev
   98  kubectl get svc -n prod
   99  kubectl get pods -n prod
  100  kubectl get pods -n prod
  101  kubectl get pods -n prod
  102  kubectl set image deployment/web web=jinny1/movie-streaming-frontend 
  103  kubectl get pods
  104  kubectl get pods
  105  cd /
  106  history
[root@ip-172-31-45-109 /]# 