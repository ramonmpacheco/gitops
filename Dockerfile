FROM golang:1.19

WORKDIR /go/src/gitops
ENV PATH="/go/bin:${PATH}"

CMD ["tail", "-f", "/dev/null"]
