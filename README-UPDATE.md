# jianmu-runner-ssh-update

#### 介绍
用于通过ssh私钥免密登陆远程主机更新文件


#### 命令说明
```
update:

参数：
JIANMU_SSH_PRIVATE_KEY:  远程主机私钥
JIANMU_SSH_USER:         ssh登陆的用户
JIANMU_SSH_IP:           远端主机IP
JIANMU_SSH_PORT:         ssh端口
JIANMU_REMOTE_FILE:      被更新的远程文件路径
JIANMU_LOCAL_FILE:       本地更新文件路径
```

#### 构建
```
docker build --rm -f {Dockerfile} -t {image_name}:{image_tag} .
```

