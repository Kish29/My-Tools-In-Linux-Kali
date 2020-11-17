#! /bin/bash 

# ***********************
# Change grub background
# ***********************

cp /root/WallPaper/grub-jar.png /boot/grub/themes/kali/background.png 

# ***********************
# Change grub initialize background
# ***********************

cp /root/WallPaper/grub-jar.png /usr/share/grub/themes/kali/grub-16x9.png

#***************************************************** maby background.png 

# ***********************
# Change login background
# ***********************

# get login background real file 
pic1=$(readlink /etc/alternatives/desktop-login-background)

# show absolute path
pic2=$(readlink -m $pic1)

# get real file 
real_file=$(echo $pic2 | awk '{sub(/.{4}$/,"")}1')$"-16x9.png"

cp /root/WallPaper/grub-jar.png $real_file
