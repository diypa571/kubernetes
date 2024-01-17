#!/bin/bash
#Diyar.Parwana@gmail.com
#Diypa571@gmail.com
if [ "$1" == "master" ]; then
    echo " Kubernetes Master node."
    # Master node 
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
    sudo apt-add-repository "deb http://apt.kubernetes.io/kubernetes-xenial-main"
    sudo apt update
    sudo apt install kubeadm kubectl kubernetes-cni -y
    sudo kubeadm init

    # Echo the instructions for worker nodes to join
    echo "***********************"
    echo "Copy and paste the   kubeadm join command to worker nodes:"
    sudo kubeadm token create --print-join-command

elif [ "$1" == "worker" ]; then
    echo "Kubernetes Worker node"
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
    sudo apt-add-repository "deb http://apt.kubernetes.io/kubernetes-xenial-main"
    sudo apt update
    sudo apt install kubeadm kubectl kubernetes-cni -y
    #echo "sudo apt install kubeadm kubectl kubernetes-cni -y"
    echo "  Copy and paste the master kubeadm generated join command here"

else
    echo "Enter right argument   'master' or 'worker'."
    exit 1
fi

echo "***********************"
echo "To check the connection, use the command: kubectl get nodes"
echo "If the connection fails, copy the configuration files manually:"
echo "sudo mkdir -p \$HOME/.kube"
echo "sudo cp -i /etc/kubernetes/admin.conf \$HOME/.kube/config"
echo "sudo chown \$(id -u):\$(id -g) \$HOME/.kube/config"
echo "kubectl get nodes"
echo "***********************"
echo "To install Calico, run the command:"
echo "kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml"
echo "Calico YAML file is also available at:"
echo "https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/calico.yaml"

if [ "$1" == "master" ]; then
    echo "***********************"
    echo "To install Docker on the Master node, run the command:"
    echo "sudo apt install docker.io -y"
    echo "***********************"
    echo "To install curl (if not already installed), run the command:"
    echo "sudo apt install apt-transport-https curl -y"
fi

echo "***********************"
echo "To add Kubernetes repository key, run the commands:"
echo "curl -s https://packages.cloud.com/apt/doc/apt-key.gpg | sudo apt-key add -"
echo "sudo apt-add-repository \"deb http://apt.kubernetes.io/kubernetes-xenial-main\""
echo "sudo apt update"
echo "***********************"
echo "To install kube adm, cublet, cubectl, and Kubernetes, run the command:"
echo "sudo apt install kubeadm kubectl kubernetes-cni -y"
echo "***********************"
