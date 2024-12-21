# 1- build stage
FROM golang:latest as builder

WORKDIR /app

COPY fc.go /app

RUN go build fc.go

# 2 - run binary stage
FROM scratch

COPY --from=builder /app /

ENTRYPOINT [ "./fc" ]