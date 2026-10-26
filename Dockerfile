FROM ubuntu:24.04
LABEL org.opencontainers.image.source="https://github.com/krishnamoorthyrajendran/accuknox_assessment"
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bash \
        fortune-mod \
        fortunes \
        cowsay \
        netcat-openbsd \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="/usr/games:${PATH}"

WORKDIR /app

COPY wisecow.sh /app/wisecow.sh

RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["/app/wisecow.sh"]
