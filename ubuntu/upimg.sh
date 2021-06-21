#!/bin/bash
cdt=`date +"%Y%m%d_%H%M%S"`
mkdir -p /home/lius/Pictures/wallpaper/history/
cp /home/lius/Pictures/wallpaper/current.jpg /home/lius/Pictures/wallpaper/history/${cdt}.jpg
curl -L https://source.unsplash.com/2560x1440/?nature,water  -o "/home/lius/Pictures/wallpaper/tmp.jpg"

cimgsum=`sha256sum /home/lius/Pictures/wallpaper/tmp.jpg |awk '{print $1}'`
imglist=`ls /home/lius/Pictures/wallpaper/history/`

replaceFlag=true
for img in ${imglist}
do
    shasumVal=`sha256sum /home/lius/Pictures/wallpaper/history/${img} |awk '{print $1}'`
    if [[ $cimgsum == $shasumVal ]]
    then
        replaceFlag=false
    fi
    
done

if [[ $replaceFlag == true ]];then
    echo "set background img"
    cp /home/lius/Pictures/wallpaper/tmp.jpg /home/lius/Pictures/wallpaper/current.jpg
    gsettings set org.gnome.desktop.background picture-uri file:///home/lius/Pictures/wallpaper/current.jpg
else
    echo "img is seted ,pass this jpg"
fi
