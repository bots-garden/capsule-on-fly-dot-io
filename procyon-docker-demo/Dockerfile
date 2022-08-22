FROM gitpod/workspace-base

USER gitpod

ARG RELEASE="0.3.7"
ARG ARCHITECTURE="amd64"

# ------------------------------------
# Install Sat (Suborbital)
# ------------------------------------
RUN wget https://github.com/suborbital/sat/releases/download/v0.1.2/sat-v0.1.2-linux-amd64.tar.gz
RUN tar -zxf sat-v0.1.2-linux-amd64.tar.gz
RUN sudo cp sat /usr/local/bin/sat

# ------------------------------------
# Install Procyon
# ------------------------------------
RUN wget https://github.com/bots-garden/procyon/releases/download/${RELEASE}/procyon-launcher-${RELEASE}-linux-${ARCHITECTURE}.tar.gz
RUN mkdir procyon-launcher
RUN tar -zxf procyon-launcher-${RELEASE}-linux-${ARCHITECTURE}.tar.gz --directory procyon-launcher

COPY ./procyon-launcher.json ./procyon-launcher

# ------------------------------------
# Procyon Reverse (reverse proxy)
# ------------------------------------
RUN wget https://github.com/bots-garden/procyon/releases/download/${RELEASE}/procyon-reverse-${RELEASE}-linux-${ARCHITECTURE}.tar.gz
RUN mkdir procyon-reverse
RUN tar -zxf procyon-reverse-${RELEASE}-linux-${ARCHITECTURE}.tar.gz --directory procyon-reverse

COPY ./procyon-reverse.json ./procyon-reverse
COPY ./start.sh .

EXPOSE 8080
EXPOSE 9090

# docker run -p 8080:8080 -p 9090:9090 procyon
# docker run -p 8080:8080 -p 9090:9090 -d procyon

ENTRYPOINT ["sh", "-c"]
CMD [ "./start.sh" ]
