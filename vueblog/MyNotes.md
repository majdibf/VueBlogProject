## Create new Derby database instance
```bash
cd ~/IdeaProjects/VueBlogProject/vueblog/db
ls $DERBY_HOME/bin/
startNetworkServer
gnome-terminal --tab
ij
CONNECT 'jdbc:derby://localhost:1527/vueblogdb;create=true'  user 'admin';
CALL SYSCS_UTIL.SYSCS_CREATE_USER('admin', 'derby123');
disconnect;
exit;
```
###MybatisPlus usefull resources:
```
https://github.com/LJF2402901363/java_study/blob/main/mybatis-plus%E5%AD%A6%E4%B9%A0/Mybatis-plus%E5%AD%A6%E4%B9%A0.md

```

