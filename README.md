# Kubernetes
Komma igång med Kubernetes
Lista med kommandon för Ubuntu, det för  master node

1- Hämta och installera Kubernetes repository key
För att hämta och installera GPG-nyckeln för Kubernetes-repot, använd följande kommandon:

 curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
 sudo apt-add-repository "deb http://apt.kubernetes.io/kubernetes-xenial-main"
 sudo apt update

2- Installera  kubeadm, cublet, cubectl och kubernetes  

  sudo apt install kubeadm kubectl kubernetes-cni -y


3- Initiera kubeadm för att skapa kubeadm join command för att worker1 and worker1 för master att få kontroll

 sudo kubeadm init

***********************


Master node
Info: Installera docker


 root@master:# sudo apt install docker.io -y
 
Info: Installer curl, om finns redan installerat

 root@master:# sudo apt install apt-transport-https curl -y


Info: Hämta och installera repository key för kubernetes

 root@master:# curl -s  https://packages.cloud.com/apt/doc/apt-key.gpg | sudo apt-key add 
 
 root@master:# sudo apt-add-repository "deb http://apt.kubernetes.io/kubernetes-xenial-main"
 
 sudo apt update

insllatera kube adm, cublet, cubectl och kubernetes

 root@master:# sudo apt install kubeadm kubectl kubernetes-cni -y

 







