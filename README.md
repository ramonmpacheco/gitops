# GITOPS POC

<!-- Build from the file "Dockerfile.prd" with tag "ramonpacheco/gitops:latest" -->
> docker build -f Dockerfile.prd -t ramonpacheco/gitops:latest . 

<!-- Verify if build works
The tag "--rm" remove container when it stoped -->
> docker run --rm -p 8080:8080 ramonpacheco/gitops:latest 

<!-- Creating kind cluster  -->
<!-- In this poc "kind" was used -->
<!-- https://kind.sigs.k8s.io/docs/user/quick-start/ -->
> kind create cluster --name=gitops

<!-- Set kubectl context to "kind-gitops"
You can now use your cluster with: -->
> kubectl cluster-info --context kind-gitops

<!-- Install kustomize -->
> brew install kustomize

<!-- Apply k8s files on local kubernetes -->
> kubectl apply -f k8s/

<!-- See deploy -->
> kubectl get deploy

<!-- See services -->
> kubectl get svcs