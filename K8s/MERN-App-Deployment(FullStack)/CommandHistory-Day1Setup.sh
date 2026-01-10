[root@ip-172-31-36-74 mern-app-deployment]# history
    1  cd /
    2  yum install docker -y
    3  systemctl start docker
    4  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm
    5  sudo rpm -Uvh minikube-latest.x86_64.rpm
    6  minikube start --force
    7  curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.32.0/2024-12-20/bin/linux/amd64/kubectl
    8  chmod +x ./kubectl
    9  cp ./kubectl /usr/bin/
   10  mkdir mern-app-deployment
   11  cd mern-app-deployment/
   12  vi mongo-app.yaml
   13  vi secret.yaml
   14  kubectl api-resources
   15  kubectl get pods
   16  ls
   17  kubectl apply -f secret.yaml 
   18  kubectl get secret
   19  kubectl apply -f mongo-app.yaml 
   20  kubectl get deployment
   21  kubectl get pods
   22  kubectl get pods
   23  kubectl get pods
   24  kubectl get pods
   25  vi express-webapp.yaml
   26  vi mongo-service.yaml
   27  kubectl apply -f mongo-service.yaml 
   28  kubectl get svc
   29  cat mongo-service.yaml 
   30  ls
   31  vi express-webapp.yaml 
   32  vi mongo-config.yaml
   33  kubectl get svc
   34  cat mongo-config.yaml 
   35  vi express-webapp.yaml 
   36  kubectl apply -f mongo-config.yaml 
   37  kubectl get configmap
   38  kubectl describe configmap mongo-config
   39  kubectl apply -f express-webapp.yaml 
   40  kubectl get deployment
   41  kubectl get pods
   42  vi webappservice.yaml
   43  kubectl apply -f webappservice.yaml 
   44  kubectl get svc
   45  minikube ip
   46  curl 192.168.49.2:31250
   47  docker ps
   48  curl 192.168.49.2:31250
   49  cat mongo-config.yaml 
   50  cat express-webapp.yaml 
   51  kubectl get svc
   52  yum install socat -y
   53  socat TCP4-LISTEN:8081,fork,su=nobody TCP4:192.168.49.2:31250 &
   54  kubectl get pods
   55  kubect logs webapp-deployment-58789fd86d-b72qj
   56  kubectl logs webapp-deployment-58789fd86d-b72qj
   57  kubectl get pods
   58  kubectl delete pod mongo-deployment-b6c557fc9-nc59q
   59  kubectl get pods
   60  vi mongo-app.yaml 
   61  kubectl apply -f mongo-app.yaml 
   62  vi mongo-app.yaml 
   63  kubectl apply -f mongo-app.yaml 
   64  kubectl get pods
   65  kubectl delete pod mongo-deployment-5b6bb88667-dx52k
   66  kubectl apply -f mongo-app.yaml 
   67  vi mongo-app.yaml 
   68  docker exec -it minikube bash
   69  vi mongo-app.yaml 
   70  kubectl apply -f mongo-app.yaml 
   71  kubectl get pods
   72  kubectl delete pod mongo-deployment-766b69866b-7nvmp
   73  kubectl get pods
   74  docker exec -it minikube bash
   75  vi pv.yaml
   76  docker exec -it minikube bash
   77  vi pv.yaml
   78  kubectl get nodes
   79  vi pv.yaml
   80  kubectl apply -f pv.yaml 
   81  vi pv.yaml
   82  kubectl apply -f pv.yaml 
   83  kubectl get pv
   84  vi pvc.yaml
   85  kubectl apply -f pvc.yaml 
   86  ls
   87  vi pvc.yaml
   88  kubectl apply -f pvc.yaml 
   89  vi pvc.yaml
   90  kubectl apply -f pvc.yaml 
   91  kubectl get pvc
   92  kubectl get pv
   93  vi mongo-app.yaml 
   94  kubectl apply -f mongo-app.yaml 
   95  kubectl get pods
   96  kubectl describe pod mongo-deployment-74896c57f4-9d77k
   97  docker exec -it minikube bash
   98  kubectl delete pod mongo-deployment-74896c57f4-9d77k
   99  kubectl get pods
  100  docker ps
  101  history