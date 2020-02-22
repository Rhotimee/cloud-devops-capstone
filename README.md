# Cloud Devops Nanodegree capstone

Capstone project for Cloud DevOps Engineer Nanodegree Program.

This project project uses Jenkins, Docker, Kubernetes and Cloudformation to implement CI/CD and infrastructure provisioning.

#### Deployment Process

Rolling Updates was used for continuous deployment of the application.

#### Commands
```docker build -t capstone-app .```\
```docker push rhotimee/capstone-app```\
```kubectl apply -f deployments/load-balancer.yaml```\
```kubectl apply -f deployments/deployment.yaml```\

```kubectl get deployments```\
```kubectl get nodes```\
```kubectl get pods```\

References
https://docs.aws.amazon.com/eks/latest/userguide/getting-started-console.html
https://codeburst.io/getting-started-with-kubernetes-deploy-a-docker-container-with-kubernetes-in-5-minutes-eb4be0e96370
https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
