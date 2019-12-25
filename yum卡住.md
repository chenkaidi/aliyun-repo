### 问题描述
在用yum、rpm命令安装或查询任何包时，执行相关命令后无任何反应，直接卡住，也未给出任何错误提示信息，ctrl+c也不好使，只能杀掉进程。

### 解决办法
删除rpm数据文件后再重建rpm数据文件，命令如下：

###### 删除rpm数据文件 
rm -f /var/lib/rpm/__db.00*
###### 重建rpm数据文件 
rpm -vv --rebuilddb
##### 清空缓存后再重新缓存
yum clean all 
yum makecache
