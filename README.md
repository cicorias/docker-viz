# docker-viz

Visualize a Docker image with 

```
dockviz='docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz'
dockviz images -d | dot -Tpng -o images.png
```
