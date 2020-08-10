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

And then open a browser to http://<device-name>:8080/stream.


To customize, pass any desired parameters to the end of the command, for example
``` sh
docker run --privileged --device /dev/video0 -p 8080:8080 beholderrpa/ustreamer --persistent --drop-same-frames=30 -q=100
```

or 

``` sh
docker run --privileged --device /dev/video0 -p 8080:8080 beholderrpa/ustreamer --help
```

to see all options.