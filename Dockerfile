FROM golang:latest
RUN mkdir /app

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /demo1

EXPOSE 8080

CMD [ "/demo1" ]