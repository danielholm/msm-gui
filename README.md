MSM GUI - Minecraft Server Manager Graphical User Interface

A really simple UI to manage your Minecraft server over SSH.

I made it for a friend that couldn't remeber the msm commands, and I grew tired.

What you need (Ubuntu packages):
* zenity
* ssh

And of course a running Minecraft server that uses MSM (http://msmhq.com/)

Also this Zenity script only works if you've set up your Minecraft server to use SSH keys instead of passwords.

How to use:
1. Install needed packages.
2. Set up SSH keys.
3. Edit the script to use your credentials (ie. server adress, username and name of running map.)
4. Run the script.
5. Do what you gotta do ;)

How it works:
It's REALLY easy! It's just a bash script that uses Zenity to create a user interface. Then it just grabs the signal from the check list, runs it trough a if-statement, and depending on what you as a user chose, it will send a simple command over SSH to set server and run it using the msm software.
