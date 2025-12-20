[root@ip-172-31-15-65 /]# history
    1  cd /
    2  yum install docker -y
    3  systemctl start docker 
    4  systemctl status docker
    5  docker images
    6  docker pull ubuntu
    7  docker images
    8  ls
    9  date
   10  docker run ubuntu
   11  docker ps
   12  docker ps -a
   13  docker run -it ubuntu
   14  ls
   15  docker ps
   16  apt
   17  docker pull amazonlinux
   18  docker images
   19  docker run amazonlinux
   20  docker ps
   21  docker ps -a
   22  docker run -it amazonlinux
   23  docker ps
   24  docker ps -a
   25  exit
   26  cd /
   27  clear
   28  docker ps
   29  docker attach 02aaaa791d24
   30  curl http://172.17.0.3
   31  docker ps
   32  docker inspect upbeat_roentgen
   33  docker ps
   34  curl http://172.17.0.3
   35  docker run -it amazonlinux
   36  docker ps
   37  docker commit --help
   38  docker commit -m "my webserver image" eloquent_brown mycustomimg:v1
   39  docker images
   40  docker ps
   41  docker run -it --name gfgserver -p 80:80 mycustomimg:v1
   42  docker ps
   43  docker attach gfgserver
   44  docker ps
   45  vi index.html
   46  ls
   47  docker cp index.html gfgserver:/var/www/html/index.html
   48  vi index.html 
   49  docker cp index.html gfgserver:/var/www/html/index.html
   50  docker cp gfgserver:/gfg.txt .
   51  ls
   52  docker ps
   53  docker stop 1d22be019aee 02aaaa791d24 ba775b907048
   54  docker ps
   55  docker ps -a
   56  docker rm ba775b907048
   57  docker ps -a
   58  docker rm c09a6c660330 74894612f48d  1d22be019aee 
   59  docker ps -a
   60  docker ps
   61  docker run -it --name gfgserver mycustomimg:v1
   62  docker run -it --name gfgserver2 -p 80:80  mycustomimg:v1
   63  docker run -it --name gfgserver2 -p 81:80  mycustomimg:v1
   64  docker ps -a
   65  docker rm gfgserver2
   66  docker run -it --name gfgserver2 -p 81:80  mycustomimg:v1
   67  docker ps
   68  docker attach gfgserver2
   69  docker ps 
   70  docker rm gfgserver2
   71  docker rm -f gfgserver2
   72  docker ps
   73  mkdir data
   74  pwd
   75  ls
   76  docker run -it --name os1 -v /data/:/var/www/html/  mycustomimg:v1
   77  cd data/
   78  ls
   79  docker ps
   80  docker rm -f os1
   81  docker ps
   82  pwd
   83  ls
   84  docker run -it --name os2 -v /data/:/var/www/html/  mycustomimg:v1
   85  docker ps
   86  docker volume --help
   87  docker volume ls
   88  docker volume create --help
   89  docker volume create -d local gfgvol
   90  docker volume ls
   91  docker run -it --name os3 -v gfgvol:/var/www/html/  mycustomimg:v1
   92  docker run -it --name os4 -v gfgvol:/var/www/html/  mycustomimg:v1
   93  cd /var/lib/docker/volumes/
   94  pwd
   95  l
   96  ls
   97  cd gfgvol/
   98  ls
   99  cd _data/
  100  ls
  101  pwd
  102  ls
  103  rm a.html b.html index.html 
  104  ls
  105  cd /
  106  ls
  107  docker ps
  108  docker images
  109  vi Dockerfile
  110  vi Dockerfile
  111  ls
  112  docker build -t gfgnewimg:v1 .
  113  docker images
  114  docker run -it --name os6 gfgnewimg:v1
  115  cat Dockerfile 
  116  docker ps
  117  docker ps -a
  118  docker run -it amazonlinux
  119  docker ps
  120  docker run -it amazonlinux date
  121  docker run -it amazonlinux ls
  122  docker run -it amazonlinux
  123  docker images
  124  docker run gfgnewimg:v1 
  125  docker run gfgnewimg:v1 ls
  126  vi Dockerfile
  127  docker build -t gfgnewimg:v2 .
  128  docker run gfgnewimg:v2 
  129  docker run gfgnewimg:v2 ls
  130  cat Dockerfile 
  131  vi Dockerfile
  132  docker build -t gfgnewimg:v3 .
  133  docker run gfgnewimg:v2 
  134  docker run gfgnewimg:v3
  135  docker ps 
  136  docker ps -a
  137  vi Dockerfile
  138  docker build -t gfgnewimg:v4 .
  139  docker run gfgnewimg:v4
  140  docker run -p 8080:80 gfgnewimg:v4
  141  vi Dockerfile
  142  history