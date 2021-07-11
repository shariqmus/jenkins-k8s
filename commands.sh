



# Only for Jenkins in an AKS Cluster

$ kubectl create namespace jenkins
$ kubectl create -f jenkins-pvc.yaml -n jenkins
$ kubectl create -f jenkins-deployment.yaml -n jenkins
$ kubectl get pods -n jenkins
$ kubectl create -f jenkins-service.yaml --namespace jenkins
$ kubectl get services --namespace jenkins

# From: https://levelup.gitconnected.com/running-jenkins-inside-a-kubernetes-cluster-bd86822d487
