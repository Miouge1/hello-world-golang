FROM golang:alpine

ENV CGO_ENABLED=0
COPY main.go .
RUN go build -o /main

FROM scratch
COPY --from=0 /main /main
CMD ["/main"]
