FROM golang:1.25-alpine AS builder

WORKDIR /app
COPY go.mod hello.go ./
RUN go build -o hello .

FROM alpine:latest

WORKDIR /app
COPY --from=builder /app/hello .

ENTRYPOINT ["./hello"]
