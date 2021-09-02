name: 远端主机文件替换
description: 通过scp，替换远端主机文件
owner: jianmu
source: https://gitee.com/jianmu-runners/jianmu-runner-ssh
docs: https://gitee.com/jianmu-runners/jianmu-runner-ssh
ref: ssh_update
version: v2.0
type: DOCKER
inputParameters:
  - ref: ssh_private_key
    name: ssh private key
    type: SECRET
    value: private_key
  - ref: ssh_user
    name: ssh user
    type: STRING
    value: root
  - ref: ssh_port
    name: ssh port
    type: NUMBER
    value: 22
  - ref: ssh_ip
    name: ssh ip
    type: STRING
    value: 127.0.0.1
  - ref: remote_file
    name: remote file path
    type: STRING
    value: /a/b/c/d/e
  - ref: local_file
    name: local file for update remote file
    type: STRING
    value: /a/b/c/e/d
spec:
  image: 'jianmudev/jianmu-runner-ssh-update:v2.0'
  entrypoint: 
    - /usr/local/bin/update

