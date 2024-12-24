# 1- build stage
FROM golang:latest AS builder

WORKDIR /app

COPY fc.go .

RUN go build -ldflags "-w" fc.go

# 2 - run binary stage
FROM scratch

COPY --from=builder /app/fc /

ENTRYPOINT [ "./fc" ]