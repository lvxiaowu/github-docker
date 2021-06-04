GitHub Actions 有一些自己的术语。

1. workflow （工作流程）：持续集成一次运行的过程，就是一个 workflow。
2. job （任务）：一个 workflow 由一个或多个 jobs 构成，含义是一次持续集成的运行，可以完成多个任务。
3. step（步骤）：每个 job 由多个 step 构成，一步步完成。
4. action （动作）：每个 step 可以依次执行一个或多个命令（action）。

# 搭配 docker

    > 持续集成、版本控制、可移植性、隔离性和安全性

1.  项目根目录新建 nginx 配置
2.  项目根目录新建 Dockerfile 文件
3.  配置容器镜像服务，选择[阿里云的容器镜像服务](https://cr.console.aliyun.com/cn-hangzhou/instance/dashboard)
4.  配置 action 所需要的账号信息，如服务器、docker，项目 /settings/secrets/actions

[http://10.16.19.88/docker](http://10.16.19.88/docker)
