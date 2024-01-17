# Kubernetes
Komma igång med Kubernetes
Köra bash skriptet direkt från URL:
curl -sSL https://raw.githubusercontent.com/diypa571/kubernetes/main/kubernetes.sh | bash -s master
curl -sSL https://raw.githubusercontent.com/diypa571/kubernetes/main/kubernetes.sh | bash -s worker
 
Master node
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


WorkerX node
 
Komma igång med Kubernetes
 1- Hämta och installera Kubernetes repository key
För att hämta och installera GPG-nyckeln för Kubernetes-repot, använd följande kommandon:

 curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
 sudo apt-add-repository "deb http://apt.kubernetes.io/kubernetes-xenial-main"
 sudo apt update

2- Installera  kubeadm, cublet, cubectl och kubernetes  

  sudo apt install kubeadm kubectl kubernetes-cni -y


3- sudo apt install kubeadm kubectl kubernetes-cni -y
kopiera och klistra master kubeadm genererade kommandon här..


WorkerY node
 
Komma igång med Kubernetes
 1- Hämta och installera Kubernetes repository key
För att hämta och installera GPG-nyckeln för Kubernetes-repot, använd följande kommandon:

 curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
 sudo apt-add-repository "deb http://apt.kubernetes.io/kubernetes-xenial-main"
 sudo apt update

2- Installera  kubeadm, cublet, cubectl och kubernetes  

  sudo apt install kubeadm kubectl kubernetes-cni -y


3- sudo apt install kubeadm kubectl kubernetes-cni -y
kopiera och klistra master kubeadm genererade kommandon här..




***********************
För att kontrollera anslutningen, det kan göras med kubectl get nodes kommandon
kubectl get nodes

Om anslutningen ej lyckas..
En får kopiera konfigurationsfilerna manuelt
root@master: # mkdir -p $HOME/.kube
root@master: # sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
root@master: # sudo chown $(id -u):$(id -g) $HOME/.kube/config
root@master: # kubectl get nodes



Avslutningsvis:
calico yaml konfigurationsfilen med följande kommando
root@master# kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
Finns även här
https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/calico.yaml






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

 







