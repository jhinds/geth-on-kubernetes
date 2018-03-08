# Geth On Kubernetes

To accompany my blogpost on deploying geth nodes on kubernetes

# Build Dokcer Image
From with repository root.
```
$ export TAG=latest && \
    export REPO=jhinds && \
    docker build -t $REPO/geth:$TAG . && \
    docker push $REPO/geth:$TAG
```