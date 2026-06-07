FROM alpine:3.22 AS runtime
ARG TARGETARCH
RUN apk add --no-cache ca-certificates
WORKDIR /app
COPY dist/${TARGETARCH}/scores-ws /usr/local/bin/scores-ws
CMD ["scores-ws"]
