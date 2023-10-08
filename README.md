# GITOPS POC

// Build from the file "Dockerfile.prd" with tag "ramonpacheco/gitops:latest"
> docker build -f Dockerfile.prd -t ramonpacheco/gitops:latest . 

// Verify if build works
// The tag "--rm" remove container when it stoped
> docker run --rm -p 8080:8080 ramonpacheco/gitops:latest 