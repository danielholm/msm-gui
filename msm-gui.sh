#!/bin/bash
# This script, made by Daniel Holm <admin@danielholm.se>, makes it easy to send small commands to msm using SSH.
# 130304

# Some variables
HOST=yourminecrafthost.com
USERNAME=yourminecraftuser
MCMAP=yourminecraftmap

# When run, a zenity window apears and asks you what it is you want.
ans=$(zenity  --list  --title="Minecraft Server UI" --text "What would you like to do?" --radiolist  --column "" --column "" TRUE Start FALSE Stop FALSE Status FALSE Connected); echo $ans

if [ $ans == Start ]; then
	export START=$(ssh $USERNAME@$HOST "msm $MCMAP start")
	zenity --info --text "Server on its way up: $START" 

elif [ $ans == Stop ]; then
	export STOP=$(ssh $USERNAME@$HOST "msm $MCMAP stop")
	zenity --info --text "Server on its way down: $STOP" 

elif [ $ans == Status ]; then
	export STATUS=$(ssh $USERNAME@$HOST "msm $MCMAP status")
	zenity --info --text "Server status: $STATUS" 

elif [ $ans == Connected ]; then
	export CONNECTED=$(ssh $USERNAME@$HOST "msm $MCMAP connected")
	zenity --info --text "Connected: $CONNECTED" 

else
	echo None chosen.
fi

exit 0
