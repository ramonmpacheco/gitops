# GITOPS POC

// Build from the file "Dockerfile.prd" with tag "ramonpacheco/gitops:latest"
> docker build -f Dockerfile.prd -t ramonpacheco/gitops:latest . 

// Verify if build works
The tag "--rm" remove container when it stoped
> docker run --rm -p 8080:8080 ramonpacheco/gitops:latest 

// Creating kind cluster 
// In this poc "kind" was used
// https://kind.sigs.k8s.io/docs/user/quick-start/
> kind create cluster --name=gitops

// Set kubectl context to "kind-gitops"
You can now use your cluster with:
> kubectl cluster-info --context kind-gitops

// Install kustomize
> brew install kustomize

// Apply k8s files on local kubernetes
> kubectl apply -f k8s/

// See deploy
> kubectl get deploy

// See services
> kubectl get svc

// Install Argo CD
(link)[https://argoproj.github.io/cd/]
> kubectl create namespace argocd
> kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

// Retrieve password
> kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}"| base64 -d; echo
A5jXzuIp2icxZTBv

// port foward
> kubectl port-forward svc/argocd-server -n argocd 8080:443
> kubectl port-forward svc/goserver-service 9090:8080