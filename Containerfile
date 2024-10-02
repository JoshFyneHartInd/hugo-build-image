FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    hugo \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /site

ENTRYPOINT ["hugo"]