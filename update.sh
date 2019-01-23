cd  /etc/yum.repos.d/

yum -y install wget

#获取yum源
wget  http://mirrors.aliyun.com/repo/Centos-7.repo

# 备份系统原来的repo文件
mv  CentOs-Base.repo CentOs-Base.repo.bak

#重命名 Centos-7.repo -> CentOs-Base.repo
mv Centos-7.repo CentOs-Base.repo

#执行yum源更新命令
yum clean all
yum makecache
yum update
