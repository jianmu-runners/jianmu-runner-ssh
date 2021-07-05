# jianmu-runner-ssh

#### 介绍
用于通过ssh私钥免密登陆远程主机执行命令


#### 命令说明
```
JIANMU_SSH_PRIVATE_KEY:  远程主机私钥
JIANMU_SSH_HOST:         登陆的用户及地址信息
JIANMU_SSH_CMD:          远程执行的命令
```
#### 构建
```
docker build --rm -f {Dockerfile} -t {image_name}:{image_tag} .
```
