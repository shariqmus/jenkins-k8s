
https://levelup.gitconnected.com/running-jenkins-inside-a-kubernetes-cluster-bd86822d487

$ kubectl create namespace jenkins

$ vi jenkins-pvc.yaml

$ kubectl create -f jenkins-pvc.yaml -n jenkins

$ vi jenkins-deployment.yaml 

$ kubectl create -f jenkins-deployment.yaml -n jenkins

$ kubectl get pods -n jenkins

$ vi jenkins-service.yaml

$ kubectl create -f jenkins-service.yaml --namespace jenkins

$ kubectl get services --namespace jenkins

