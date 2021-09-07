workflow:
  name: 发布节点定义——远程主机执行命令
  ref: publish_ssh_cmd_task
  description: 任务定义：ssh免密登陆到远程主机，执行指定命令
  Start:
    type: start
    targets:
      - Clone
  Clone:
    type: git:v1.0
    sources:
      - Start
    targets:
      - Publish
    param:
      workspace: jianmu-runner-ssh
      remote_url: https://gitee.com/jianmu-runners/jianmu-runner-ssh.git
      commit_branch: master
  Publish:
    type: hub_publish:v1.0
    sources:
      - Clone
    targets:
      - End
    param:
      registry_url: https://hub.jianmu.dev
      task_dsl_file:  jianmu-runner-ssh/task_definitions/cmd_execute.dsl
      hub_appkey: ((jianmuhub.appkey))
  End:
    type: end
    sources:
      - Publish
