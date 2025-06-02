Jenkinsfile should:

Trigger on code change in project-3.

Build Docker Image: docker build -t wbrymo/java-webappcal:<build_tag> .

Push Image: docker push wbrymo/java-webappcal:<build_tag>

Deploy to Kubernetes:

kubectl apply -f k8s/deployment.yaml

kubectl apply -f k8s/service.yaml



✅ Docker Hub credentials in Jenkins
✅ Kubernetes config context (kubectl)
✅ Jenkins server agent/worker with Docker installed
✅ Kubernetes cluster DNS/Load Balancer endpoint for testing
✅ project-3 branch pushed to GitHub
✅ Jenkins job configured to pull from https://github.com/wbrymo/cee-final-proj.git and branch project-3
