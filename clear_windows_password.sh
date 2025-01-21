#!/bin/bash
#ver 2025-01-21-1
#This is a script to make clearing windows passwords from linux easier.
#Requires Porteus os, chntpw application, and windows partition must not be locked by bitlocker encryption.
#Porteus os web site: http://www.porteus.org
#You can find mirror of all needed files here: https://1drv.ms/f/c/d3221cfe195f835b/EpsMCSu8fJJCmywUxjhXNWABNh4cPEDBQiNOk43ChrmNJA?e=FlsK71
#(Original sources: 
#('Porteus-v5.1/Porteus-LXDE-v5.1-alpha-x86_64.iso': https://ftp.nluug.nl/os/Linux/distr/porteus/x86_64/Porteus-v5.1/Porteus-LXDE-v5.1-alpha-x86_64.iso)
#('chntpw-140201.x86_64.xzm', https://sourceforge.net/projects/ikkiboot/files/porteus/)
#('change_windows_password.sh' https://github.com/dbojan/howto)
#
#If you use ventoy, copy 3 files to usb.
#If you use rufus, create bootable iso from Porteus iso, and copy additional files to usb.
#(If you copy files to porteus\modules folder, they should load automatically)
#
#root password is toor, guest password is guest.
#How to use, after booting pc from usb:
#
#To open file manager: click on white icon (File Manager) in top left corner
#(Windows partition should be auto-mounted. If not: click on 'Windows' icon on the left panel of file manager, to see windows files.)
#To install chntpw app: click on usb drive in left part of file manager, then on chntpw_xx.xzm, in the left panel of the file manager,
#Enter root password: toor
#To run the script: double click on 'change_windows_password.sh' and select 'Execute In Terminal'
#(If you wish to read 'change_windows_password.sh' in text editor, double click on it, and select 'Open'.)
#
# You will be presented with the list of windows users. We will clear admin users' password, and write changes to disk.
# What to do after running the script (make sure Numlock is on):
#
# 1. Press 1 followed by enter - to select 'Edit user data na passwords'
# 2. Press enter to edit auto selected 'admin' user (whose number is written at the bottom). Or type in number (RID) of the user you wish to edit. Example: 01f4
# 3. Press 1 - to 'Clear (blank) user password'
# 4. Press q - to 'Quit editing user, back to user select'
# 5. Press q - to 'Quit (you will be asked if there is something to save)'
# 6. Press y - to 'Write files'
# - List of users will be displayed, cleared password(s) should say *BLANK* in the 'Lock' column. Reboot if all is ok (Logout).


clear
echo "*** Mount windows partition first, by clicking on disk icon named 'Windows' in the 'File manager', if not mounted already. ***"

prog='chntpw'
windowsPart='Windows/System32/config/SAM'

if ! command -v $prog 2>&1 >/dev/null
then
    echo "$prog not installed, please double click on 'chntpw_xx.xzm' to install or, download package from proteus web site and install."
    exit 1
fi


for a in $(ls  /mnt /media)
do
	locationAndFile='/mnt/'${a}'/'$windowsPart
	if [ -f $locationAndFile ]
	then
		echo "Found registry file at $locationAndFile"
		echo "*** How to use ***"
		echo "*** 1. Press 1 followed by enter - to select 'Edit user data na passwords' ***"
		echo "*** 2. Press enter to edit auto selected user (whose number is written at the bottom), or type in number (RID) of the user you wish to edit. Example: 01f4 ***"
		echo "*** 3. Press 1 - to 'Clear (blank) user password' ***"
		echo "*** 4. Press q - to 'Quit editing user, back to user select' ***"
		echo "*** 5. q - to 'Quit (you will be asked if there is something to save)' ***"
		echo "*** 6. Press y - to 'Write files' ***"	
		$prog -i $locationAndFile
		echo "*** List of users, cleared password(s) should say *BLANK* in the 'Lock' column. Reboot if all is ok (Logout). ***"
		$prog -l $locationAndFile
	fi
done
