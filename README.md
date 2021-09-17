# jianmu-runner-ssh

#### 介绍
用于通过ssh私钥免密登陆远程主机执行命令


#### 输入参数
```
JIANMU_SSH_PRIVATE_KEY:  远程主机私钥
JIANMU_SSH_HOST:         登陆的用户及地址信息
JIANMU_SSH_CMD:          远程执行的命令
```
#### 构建docker镜像
```
# 创建docker镜像
docker build --rm -f dockerfile/xxx -t jianmudev/jianmu-runner-ssh-cmd:${version} .

# 上传docker镜像
docker push jianmudev/jianmu-runner-ssh-cmd:${version}
```

#### 用法
```
docker run --rm \
  -e JIANMU_SSH_PRIVATE_KEY=xxx \
  -e JIANMU_SSH_HOST=xxx \
  -e JIANMU_SSH_CMD=xxx \
  jianmudev/jianmu-runner-ssh-cmd:${version} 
```
