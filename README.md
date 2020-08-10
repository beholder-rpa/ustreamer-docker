# ustreamer-docker

Docker image for [ustreamer](https://github.com/pikvm/ustreamer)

Build with
``` sh
docker build -t beholderrpa/ustreamer:latest .
```

Run with
``` sh
docker run --privileged --device /dev/video0 -p 8080:8080 beholderrpa/ustreamer
```