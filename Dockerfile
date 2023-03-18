FROM node:19.8.1-alpine3.16

ENV TZ Asia/Tokyo

RUN npm install -g yo generator-hubot
RUN addgroup -S hubot && \
    adduser -S hubot -G hubot && \
    echo "hubot ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    echo 'hubot:hubot' | chpasswd

USER hubot
WORKDIR /app