ARG DISTRO_VER=latest
FROM balenalib/raspberrypi3-debian:${DISTRO_VER} as build
WORKDIR /build

RUN [ "cross-build-start" ]

RUN apt-get update && \
    apt-get install -y \
        ca-certificates \
        make \
        gcc \
        git \
        libevent-dev \
        libjpeg8-dev \
        uuid-dev \
        libbsd-dev \
        libraspberrypi-dev \
        wiringpi

RUN git clone --depth=1 https://github.com/pikvm/ustreamer

WORKDIR /build/ustreamer/
RUN make WITH_OMX=1 WITH_GPIO=1
RUN ./ustreamer --help
RUN [ "cross-build-end" ]

FROM balenalib/raspberrypi3-debian:${DISTRO_VER} as RUN
WORKDIR /ustreamer

COPY --from=build /build/ustreamer/ustreamer .

EXPOSE 8080
ENTRYPOINT [ "ustreamer" ]