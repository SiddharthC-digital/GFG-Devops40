[root@ip-172-31-34-125 mern-app-practical]# history
    1  cd /
    2  yum install docker -y
    3  systemctl start docker
    4  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
    5  sudo rpm -Uvh minikube-latest.x86_64.rpm
    6  ls
    7  mikube start
    8  minikube start
    9  minikube start --force
   10  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.34.2/2025-11-13/bin/darwin/amd64/kubectl
   11  ls
   12  chmod +x kubectl 
   13  ls
   14  ./kubectl get pod
   15  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.34.2/2025-11-13/bin/linux/amd64/kubectl
   16  ls
   17  ./kubectl 
   18  ./kubectl  get pods
   19  date
   20  ls
   21  pwd
   22  cp ./kubectl /usr/bin/
   23  date
   24  kubectl get pods
   25  docker ps
   26  docker exec -it minikube bash
   27  clear
   28  docker ps
   29  kubectl get pods
   30  kubectl
   31  kubectl run mypod --image=nginx
   32  kubectl get pod
   33  docker exec -it minikube bash
   34  docker ps
   35  kubectl get pods
   36  kubectl describe pod mypod
   37  kubectl get pod
   38  kubectl delete pod mypod
   39  kubectl get pod
   40  kubectl get pod
   41  kubectl get pod
   42  kubectl get pod
   43  kubectl get pod
   44  kubectl create deployment gfgdeployment --image=nginx
   45  kubectl get pod
   46  kubectl get deployment
   47  kubectl get rc
   48  kubectl get rs
   49  kubectl get pods
   50  kubectl delete pod gfgdeployment-6cc8cf665-bl4jj
   51  kubectl get rs
   52  kubectl get pods
   53  kubectl describe pod gfgdeployment-6cc8cf665-c57w7
   54  curl 10.244.0.5
   55  curl http://10.244.0.5
   56  docker exec -it minikube bash
   57  kubectl get pods
   58  kubectl delete pod gfgdeployment-6cc8cf665-c57w7
   59  kubectl get pods
   60  kubectl describe pod gfgdeployment-6cc8cf665-bcpr2 
   61  kubectl expose deployment gfgdeployment --port=80 --type=NodePort
   62  kubectl get svc
   63  minikube ip
   64  curl 192.168.49.2:30108
   65  kubectl get pods
   66  kubectl scale deployment gfgdeployment --replicas=4
   67  kubectl get pods
   68  kubectl get pods
   69  kubectl get rs
   70  kubectl delete pod gfgdeployment-6cc8cf665-9gmrw
   71  kubectl get rs
   72  kubectl get pods
   73  kubectl get rs
   74  curl 192.168.49.2:30108
   75  vi pod.yaml
   76  kubectl apply -f pod.yaml 
   77  vi pod.yaml
   78  vi pod.yaml
   79  kubectl apply -f pod.yaml 
   80  kubectl get pods
   81  kubectl describe pod mygfgpod
   82  kubectl get pods
   83  vi gfgdeployment.yaml
   84  mv gfgdeployment.yaml gfg.yaml
   85  ls
   86  kubectl apply -f gfg.yaml 
   87  vi gfgdeployment.yaml
   88  vi gfg.yaml 
   89  kubectl apply -f gfg.yaml 
   90  kubectl get deployment
   91  kubectl get pods
   92  kubecl get svc
   93  kubectl get svc
   94  curl 192.168.49.2::31306
   95  curl 192.168.49.2:31306
   96  kubectl get rs
   97  mkdir mern-app-practical
   98  cd mern-app-practical/
   99  ls
  100  vi mongo-app.yaml
  101  vi secret.yaml
  102  kubectl apply -f secret.yaml 
  103  kubectl get secret
  104  kubectl describe secret
  105  vi mongo-app.yaml 
  106  vi mongo-app.yaml 
  107  kubectl apply -f mongo-app.yaml 
  108  vi mongo-app.yaml 
  109  kubectl apply -f mongo-app.yaml 
  110  vi mongo-app.yaml 
  111  kubectl apply -f mongo-app.yaml 
  112  kubectl get deployment
  113  kubectl get pods
  114  kubectl describe pod mongo-deployment-b6c557fc9-2xml6
  115  kubectl get pods
  116  history