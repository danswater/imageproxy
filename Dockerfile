FROM golang:1.9 as build
MAINTAINER Sevki <s@sevki.org>

ADD . /go/src/willnorris.com/go/imageproxy
WORKDIR /go/src/willnorris.com/go/imageproxy/cmd/imageproxy
RUN go install
WORKDIR /

CMD []
ENTRYPOINT ["/go/bin/imageproxy"]

EXPOSE 8080
