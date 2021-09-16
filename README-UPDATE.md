# jianmu-runner-ssh-update

#### 介绍
用于通过ssh私钥免密登陆远程主机更新文件


#### 输入参数
```
JIANMU_SSH_PRIVATE_KEY:  远程主机私钥
JIANMU_SSH_USER:         ssh登陆的用户
JIANMU_SSH_IP:           远端主机IP
JIANMU_SSH_PORT:         ssh端口
JIANMU_REMOTE_FILE:      被更新的远程文件路径
JIANMU_LOCAL_FILE:       本地更新文件路径
```

#### 构建docker镜像
```
# 创建docker镜像
docker build --rm -t jianmu-runner-scp-resouce:${version} .

# 上传docker镜像
docker push jianmudev/jianmu-runner-scp-resouce:${version}
```

#### 用法
```
docker run --rm \
  -e JIANMU_SSH_PRIVATE_KEY=xxx \
  -e JIANMU_SSH_USER=xxx \
  -e JIANMU_SSH_IP=xxx \
  -e JIANMU_SSH_PORT=xx \
  -e JIANMU_REMOTE_FILE=/tmp/dist \
  -e JIANMU_LOCAL_FILE=:/tmp/dist \
  jianmudev/jianmu-runner-scp-resouce:${version}
```

