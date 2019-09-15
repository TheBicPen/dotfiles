#! /bin/sh

#mount windows partition to allow access to beatmaps and skins
sudo mount /dev/sdc4 /mnt

#change sensitivity to reduce acceleration
xinput --set-prop 11 'libinput Accel Speed' -0.9
xinput --set-prop 11 'libinput AccelerationProfile' -1
xinput --set-prop 11 'libinput AccelerationScheme' 'none'

#Section "InputClass"
#    Identifier "My Mouse"
#    MatchIsPointer "yes"
#    Option "AccelerationProfile" "-1"
#    Option "AccelerationScheme" "none"
#    Option "AccelSpeed" "-1"
#EndSection


wine /mnt/Users/AA/AppData/Local/osu\!/osu\!.exe
