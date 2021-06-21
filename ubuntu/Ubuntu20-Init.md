# Ubuntu20 
``` bash
sudo apt install vim git gnome-tweaks chrome-gnome-shell gnome-shell-extensions tmux zsh wget axel aria2 curl subversion -y
sudo apt install flameshot -y
mkdir -p ~/.themes ~/.icons

sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor -y && sudo apt update && sudo apt install indicator-sysmonitor -y

```

# Idea激活
``` 
https://plugins.zhile.io
插件： Eval Reset
```

# gnome 插件

```
User Themes
Unite https://extensions.gnome.org/extension/1287/unite/
TopIcons Plus 
Floating Dock && plank #隐藏原始dock，使用plank（sudo apt install plank -y）
Lock screen background #锁屏壁纸

```


# tmux 配置
```
详情见 .tmux.conf文件

```

# QQ Wehcat
```
sudo apt-get install -y ttf-wqy-microhei ttf-wqy-zenhei  xfonts-wqy   

wget -O- https://deepin-wine.i-m.dev/setup.sh | sh

sudo apt-get install -y com.qq.weixin.deepin
```

# 自定义字体
``` 
#下载字体到 /usr/share/fonts/myfonts
mkdir -p /usr/share/fonts/myfonts
sudo fc-cache -fsv 
```

# docker install
```
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update 

apt-cache policy docker-ce

sudo apt install docker-ce

# 非root用户使用docker 将当前用户添加到docker组
sudo usermod -aG docker $USER

# docker-compose install
https://github.com/docker/compose/releases/ 
#选择最新版

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
```
# topBar 系统监测工具
```
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor -y
sudo apt update 
sudo apt-get install indicator-sysmonitor

配合gnome插件 NetSpeed
```

# JDK
``` 
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_91
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH
        
```

# zsh 美化 (oh-my-zsh p10k)
[github-p10k](https://github.com/romkatv/powerlevel10k)
```
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc

p10k configure

```