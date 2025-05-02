FROM debian:bookworm-slim

ARG APPLICATION_VERSION='refs/heads/master'

LABEL maintainer="ToshY (github.com/ToshY)"

ADD https://raw.githubusercontent.com/agvxov/chadsay/$APPLICATION_VERSION/chadsay /chadsay

RUN chmod +x /chadsay

ENTRYPOINT ["/bin/bash", "/chadsay"]