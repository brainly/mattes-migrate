FROM golang:1.12-alpine

RUN apk add -U git mercurial openssh ca-certificates gcc musl-dev
RUN go get -u -d github.com/mattes/migrate/cli github.com/lib/pq
RUN go build -tags 'postgres' -o /usr/local/bin/migrate github.com/mattes/migrate/cli

COPY wait-for-ports /bin/wait-for-ports

ENTRYPOINT ["wait-for-ports", "migrate"]
