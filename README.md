[![CircleCI](https://dl.circleci.com/status-badge/img/gh/nicktran69/udacity-cloud-devops/tree/project-4.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/nicktran69/udacity-cloud-devops/tree/project-4)

## Project Overview
This project build a AI/ML microservice app with python using CircleCI cloud to manage CI/CD pipeline.

### Instruction how to build and run this app

1. Setup Environment
    python3 -m pip install --user virtualenv
    python3 -m virtualenv --python=<path-to-Python3.7> .devops
    source .devops/bin/activate

2. Run app.py
    2.1 Run in Docker: ./run_docker.sh
    2.2 Run in Kubernetes: ./run_kubernetes.sh

3. Docker & Kubernetes steps:
    * Setup and config Docker locally on Windows
        - Download and install Docker desktop from:https://www.docker.com/products/docker-desktop/ and enable Kubernetes in configuration
    * Create app in docker container, more details in run_docker.sh file
        - docker run -p 8000:80 nhanct79/project-4-ml-microservice
    * Create app via kubectl, more details in run_kubernetes.sh
        - kubectl create deployment ${DEPLOYMENT_NAME} --image=${DOCKER_PATH}
        - kubectl port-forward pod/${POD_NAME} --address 0.0.0.0 8011:80

4. Test app:
    - run script: ./make_prediction.sh

5. Other commands:
    - Get pod: kubectl get pod
    - Delete pod: kubectl delete pod <pod-name>
    - Get deployment name: kubectl get deployments
    - Scale down pod: kubectl scale deployment <deployment-name> --replica=0

