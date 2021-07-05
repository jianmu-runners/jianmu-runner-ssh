name: 远程主机执行命令
description: ssh免密登陆到远程主机，执行指定命令
owner: jianmu
source: https://gitee.com/jianmu-runners/jianmu-runner-ssh
docs: https://gitee.com/jianmu-runners/jianmu-runner-ssh
ref: ssh_cmd
version: v1.0
type: DOCKER
inputParameters:
  - ref: ssh_private_key
    name: ssh private key
    type: SECRET
    value: private_key
  - ref: ssh_host
    name: ssh host
    type: STRING
    value: root@127.0.0.1
  - ref: ssh_cmd
    name: ssh cmd
    type: STRING
    value: date
spec:
  image: 'jianmudev/jianmu-runner-ssh:v1.0'
  entrypoint:
    - /usr/local/bin/execute
