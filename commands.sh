



# Only for Jenkins in an AKS Cluster

$ kubectl create namespace jenkins
$ kubectl create -f jenkins-pvc.yaml -n jenkins
$ kubectl create -f jenkins-deployment.yaml -n jenkins
$ kubectl get pods -n jenkins
$ kubectl create -f jenkins-service.yaml --namespace jenkins
$ kubectl get services --namespace jenkins

# From: https://levelup.gitconnected.com/running-jenkins-inside-a-kubernetes-cluster-bd86822d487


# Ingress

# Create a namespace for your ingress resources
kubectl create namespace ingress-basic

# Add the ingress-nginx repository
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

# Use Helm to deploy an NGINX ingress controller
helm install nginx-ingress ingress-nginx/ingress-nginx \
    --namespace ingress-basic \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set controller.admissionWebhooks.patch.nodeSelector."beta\.kubernetes\.io/os"=linux

# Check
$ kubectl --namespace ingress-basic get services -o wide -w nginx-ingress-ingress-nginx-controller

