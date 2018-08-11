
# sudo snap install helm

# curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
# chmod 700 get_helm.sh
# ./get_helm.sh

minikube stop
minikube start

eval $(minikube docker-env)
helm init

