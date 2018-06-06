#!/bin/bash
NowTime=$(date +%Y%m%d-%H:%M)
Log="/tmp/AutoReboot.log"
Line="***************************"
Space="\n\n\n"

clear
echo -e "$Space$Line"

echo "Press enter to reset reboot command!!!"
read -t 2

if [ $? -eq  0 ]; then
    echo $NowTime 1 > $Log
    echo "Reset Reboot"
else
    read PreTime Count < $Log
    Count=$((Count+1))
    echo $PreTime $Count > $Log

    echo "$PreTime $NowTime ($Count)"
    echo "Reboot now"
    reboot
fi


echo -e "$Line$Space"
