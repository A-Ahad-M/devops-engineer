
# Cloud & DevOps Engineer Assessment Task

## Prerequisites
- Terraform installed
- kubectl installed
- Docker installed

## Steps to Deploy
1. **Provision Infrastructure**:
   ```bash
   cd terraform
   terraform init
   terraform apply
   ```

2. **Build and Push Docker Image**:
   ```bash
   docker build -t <your-dockerhub-username>/web-app:latest .
   docker push <your-dockerhub-username>/web-app:latest
   ```

3. **Deploy to Kubernetes**:
   ```bash
   kubectl apply -f deployment-deployment.yaml
   ```

4. **Deploy Monitoring**:
   kubectl apply -f prometheus-deployment.yaml
   ```

5. **Access the Application**:
   - Get the external IP:
     ```bash
     kubectl get svc web-app-service
     ```
   - Open the IP in a browser.

6. **Monitor Metrics**:
   - Access Prometheus:
     ```bash
     kubectl port-forward deployment/prometheus 9090:9090
     ```
   - Open [http://localhost:9090](http://localhost:9090).
