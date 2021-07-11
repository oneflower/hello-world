FROM harbor.example.com/public/alpine-node:8.11.4

ADD --chown=node:node . /app

USER node

RUN cd /app \
    && yarn install

WORKDIR /app

EXPOSE 8080

CMD ["pm2-docker", "index.js", "--auto-exit", "--watch"]
