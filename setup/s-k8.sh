# sudo apt install snapd
# sudo snap install conjure-up --classic
# re-login may be required at that point if you just installed snap utility
# conjure-up kubernetes

# sudo apt install virtualbox virtualbox-ext-pack 
# curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.28.2/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

# minikube start

# kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.10 --port=8080
# kubectl expose deployment hello-minikube --type=NodePort
# kubectl get pod
# curl $(minikube service hello-minikube --url)
# minikube dashboard

# eval $(minikube docker-env)

# kubectl delete services hello-minikube
# kubectl delete deployment hello-minikube
# minikube stop

kubectl config current-context
