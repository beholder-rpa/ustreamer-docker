# ustreamer-docker

Docker image for [µStreamer](https://github.com/pikvm/ustreamer) optimized for the Raspberry Pi

Surfaces a Http-based streaming server that captures data from a USB webcam or HDMI capture device attached to the Raspberry Pi. As a docker container, µStreamer is pre-built for the Raspberry Pi, can run as a service or part of a pod/swarm, and orchestrated via services such as [Balena](https://www.balena.io/).


### Manual Installation

Install docker on a Raspberry Pi then:

Run with
``` sh
docker run --rm --device /dev/video0 -p 8080:8080 beholderrpa/ustreamer
```

And then open a browser to http://<device-name>:8080/stream.


To customize, pass any desired parameters to the end of the command, for example
``` sh
docker run --rm --device /dev/video0 -p 8080:8080 beholderrpa/ustreamer --persistent --drop-same-frames=30 -q=100
```

or 

``` sh
docker run --rm --device /dev/video0 -p 8080:8080 beholderrpa/ustreamer --help
```

to see all options.

### Building

Build with
``` sh
docker build -t beholderrpa/ustreamer:latest .
```

This is based on Balena's images which run QEMU to allow cross-platform ARM builds on x86.