FROM node:17.4.0-buster-slim

RUN mkdir -p /app \
    && apt-get update \
    && apt-get install -y --no-install-recommends git-core ca-certificates

RUN npm install -g \
    npm@8.3.2 \
    semantic-release@v19.0.2 \
    @semantic-release/gitlab@v7.0.4 \
    @semantic-release/changelog@v6.0.1 \
    @semantic-release/exec@v6.0.3 \
    @semantic-release/git@v10.0.1

WORKDIR /app
COPY ./.releaserc.yml /app
#ENTRYPOINT ["npx"]
#CMD ["semantic-release"]
