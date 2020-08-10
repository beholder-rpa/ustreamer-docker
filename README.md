# ustreamer-docker

Docker image for [ustreamer](https://github.com/pikvm/ustreamer)

Build with
``` sh
docker build -t beholderrpa/ustreamer:latest .
```

Run with
``` sh
docker run --privledged -v /dev/video0 beholderrpa/ustreamer
```