一：安装jdk环境
	1.下载jdk包,讲jdk解压到/usr/lib/jvm中,也可以放到其他目录,自行设置即可.
	2.配置环境变量 到 sudo vim ~/.bashrc 最后一行添加：
		export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_91
		export JRE_HOME=${JAVA_HOME}/jre
		export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
		export PATH=${JAVA_HOME}/bin:$PATH

	变量生效，source .bashrc 可能需要sudo权限

二：安装git
	udo apt-get install git
	能编译不通过：sudo apt-get install libcurl4-openssl-dev libexpat1-dev 
	创建目录存项目代码：make prefix=/usr/local all 
	sudo make prefix=/usr/local install

三:下载IDE,设置默认的jdk即可.


