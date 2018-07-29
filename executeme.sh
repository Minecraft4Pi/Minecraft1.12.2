#!/bin/sh
sudo apt-get update 
sudo apt-get -y upgrade
cat ~/Minecraft1.12.2/text/raspi-config
sleep 10s
raspi-config
sudo apt-get -y install libalut0 libalut-dev && sudo apt-get -y install mesa-utils
cat ~/Minecraft1.12.2/text/fps
sleep 10s
mkdir ~/Minecraft; mkdir ~/Minecraft/Natives; cd ~/Minecraft && wget https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar
cat ~/Minecraft1.12.2/text/launcher
sleep 10s
cd ~/Minecraft 
java -jar Minecraft.jar
cd ~/Minecraft/Natives && wget https://www.dropbox.com/s/4oxcvz3ky7a3x6f/liblwjgl.so && wget https://www.dropbox.com/s/m0r8e01jg2og36z/libopenal.so
cd ~/.minecraft/libraries/org/lwjgl/lwjgl/lwjgl/2.9.4-nightly-20150209 && rm lwjgl-2.9.4-nightly-20150209.jar; wget https://www.dropbox.com/s/mj15sz3bub4dmr6/lwjgl-2.9.4-nightly-20150209.jar
wget https://optifine.net/downloadx?f=OptiFine_1.12.2_HD_U_C9.jar&x=89339d1eda706b43aece263ef4910a76
mv download?f=OptiFine_1.12.2_HD_U_C9 ~/Downloads/OptiFineInstall
cat ~/Minecraft1.12.2/text/optifine
sleep 10s
cd ~/Downloads && java -jar OptiFine_1.12.1_HD_U_C5.jar
cat ~/Minecraft1.12.2/text/launcher2
sleep 10s
cd ~/Minecraft && java -jar Minecraft.jar
cd ~/Minecraft/ && wget https://www.dropbox.com/s/trsel8nhan34b8q/runOptifine1_12_2.sh && sudo chmod +x runOptifine1_12_2.sh
cat ~/Minecraft1.12.2/text/edit
sleep 10s
nano ~/Minecraft/runOptifine1_12_2.sh
cp ~/Minecraft/runOptifine1_12_2.sh ~/Desktop/Minecraft\ \1.12.2
cat ~/Minecraft1.12.2/text/success
sleep 10s
sudo reboot
