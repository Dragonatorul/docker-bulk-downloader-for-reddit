FROM python:3.11-buster

ENV UID=1000
ENV GID=1000

RUN apt-get update && \
    apt-get install -y bash-completion && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -g $GID bdfr && \
    useradd -m -u $UID -g $GID -s /bin/bash bdfr

RUN mkdir /downloads && \
    chown -R bdfr:bdfr /downloads

USER bdfr

RUN python3 -m pip install bdfr --upgrade

ENV PATH="/home/bdfr/.local/bin:${PATH}"

RUN yes | bdfr completion bash 

WORKDIR /downloads

VOLUME /downloads

ENTRYPOINT [ "bdfr" ]
# Set entrypoint to run python module bdfr
# ENTRYPOINT ["python3", "-m", "bdfr"]