#!/bin/bash
chmod 777 website
# 删除之前部署的网站对应的目录
rm -rf ./website
# 克隆仓库, 将会把项目所有内容克隆到当前目录的repo目录下(如果repo目录不存在会创建)
git clone ssh://root@192.168.1.109:2222/frontend/doc-screen-front-api.git website
chmod 777 website
# 将Dockerfile克隆到website目录的docs目录下 第一次测试
cp ./Dockerfile ./website/docs
# 构建docker镜像
docker build -f ./website/docs/Dockerfile -t docsify/frontbook .
# 运行docker镜像，通过-p来修改默认的3000端口避免端口冲突
# -v表示将:前面的目录(宿主机的目录)映射到容器的/docs目录
docker run -dp 1081:1081 --name=docsify -v $(pwd)/website/docs:/docs docsify/frontbook