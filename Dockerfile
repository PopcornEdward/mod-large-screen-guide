FROM node:latest
LABEL description="A demo Dockerfile for build Docsify."
# 克隆仓库
WORKDIR /
RUN git clone ssh://root@192.168.1.109:2222/frontend/doc-screen-front-api.git
WORKDIR /frontBook/docs
RUN npm install -g docsify-cli@latest
EXPOSE 1081/tcp
ENTRYPOINT docsify serve . -p 1081