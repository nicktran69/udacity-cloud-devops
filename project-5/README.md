## Project Overview
Project 5 - Capstone Project -  Cloud Devops Engineer - Tran Cao Nhan

The project build CI/CD Workflow using CircleCI, Ansible, Cloudformation, EKS
to deploy simple Spring Boot microservice.


I. Some useful command support to config & troubleshoot:

* Config kubectl to connect EKS

GET contexts
kubectl config get-contexts

Switch contexts
kubectl config use-context CONTEXT_NAME

Get Clusters
aws eks list-clusters

Update kubeconfig
aws eks update-kubeconfig --region <region-name> --name <cluster-name>

Set cluster ARN to connect
kubectl config set-cluster <cluster-arn>/<cluster-name>
example:
kubectl config set-cluster arn:aws:eks:us-east-1:490845010626:cluster/project5-cluster

+ Troubleshoot

kubectl get events --all-namespaces

kubectl describe po <pod_name>


II.NOTES
* How to make check lint fail?
  - Remove comment: # hadolint ignore=DL3006 in backend Dockerfile

* How to make scan back end fail?
  - The java backend use CheckStyle to scan code, adjust the backend source code to make violent the config in backend/src/resource/checkStyle.xml 