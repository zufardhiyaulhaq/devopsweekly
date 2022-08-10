#################
# Base image
#################
FROM alpine:3.12 as devopsweekly-base

USER root

RUN addgroup -g 10001 devopsweekly && \
    adduser --disabled-password --system --gecos "" --home "/home/devopsweekly" --shell "/sbin/nologin" --uid 10001 devopsweekly && \
    mkdir -p "/home/devopsweekly" && \
    chown devopsweekly:0 /home/devopsweekly && \
    chmod g=u /home/devopsweekly && \
    chmod g=u /etc/passwd

ENV USER=devopsweekly
USER 10001
WORKDIR /home/devopsweekly

#################
# Builder image
#################
FROM golang:1.17-alpine AS devopsweekly-builder
RUN apk add --update --no-cache alpine-sdk
WORKDIR /app
COPY . .
RUN make build

#################
# Final image
#################
FROM devopsweekly-base

COPY --from=devopsweekly-builder /app/bin/devopsweekly /usr/local/bin

# Command to run the executable
ENTRYPOINT ["devopsweekly"]
