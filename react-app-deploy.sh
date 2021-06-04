echo -e "---------docker Login--------"
# docker login --username=$1 registry.cn-hangzhou.aliyuncs.com --password=$2
echo ~/dockerPwd.txt | docker login --username $1 registry.cn-hangzhou.aliyuncs.com --password-stdin
echo -e "---------docker Stop--------"
docker stop react-app
echo -e "---------docker Rm--------"
docker rmi registry.cn-hangzhou.aliyuncs.com/lvxiaowu/react-app:latest
echo -e "---------docker Pull--------"
docker pull registry.cn-hangzhou.aliyuncs.com/lvxiaowu/react-app:latest
echo -e "---------docker Create and Start--------"
docker run --rm -d -p 8888:80 --name react-app registry.cn-hangzhou.aliyuncs.com/lvxiaowu/react-app:latest
echo -e "---------deploy Success--------"
