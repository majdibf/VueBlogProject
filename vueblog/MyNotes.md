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


