
FROM golang:buster
WORKDIR /go/src/platform

COPY go.mod ./
RUN go mod download && go mod verify

RUN go install github.com/githubnemo/CompileDaemon@latest

CMD ["CompileDaemon", "-command=./platform -buildvcs=false"]
