#!/bin/bash
#ver 2025-01-20-1
#script to make clearing windows passwords from linux easier.
#requires porteus, chntpw application, and windows partition must not be locked by bitlocker encryption.
#if you are running this from porteus linux, install 'chntpw', by double clicking on 'chntpw_xx.xzm' in 'porteus\modules' folder.
#to make this script executable (runable), type in terminal 'chmod u+x ./clear_windows_password.sh', or right click in file manager, and select in permissions 'allow executing as program'
#to run type ./clear_windows_password.sh in terminal or,
#right click on program and select open with, other, enter xterm, or mate-terminal or terminal.
#porteus: http://www.porteus.org
#source for librewolf and chntpw packages: https://sourceforge.net/projects/ikkiboot/files/porteus/, https://forum.porteus.org/viewtopic.php?f=49&t=10461
#you can download porteus and copy it to ventoy usb, as iso, and copy chntpw, clear_windows_password.sh and optionally librewolf browser to porteus\modules folder
#or use rufus to create bootable iso from 'porteus 64-bit Mate' version iso, and copy additional files to porteus\modules folder. Create folders yourself.
#example download location for Porteus (size 470MB): https://ftp.nluug.nl/os/Linux/distr/porteus/x86_64/Porteus-v5.1/Porteus-MATE-v5.1-alpha-x86_64.iso


clear
echo "*** Mount windows partition first, by double clicking on disk icon named 'Windows' on the desktop. ***"


prog='chntpw'
windowsPart='Windows/System32/config/SAM'

if ! command -v $prog 2>&1 >/dev/null
then
    echo "$prog not install please download package from proteus web site"
    exit 1
fi


for a in $(ls  /mnt /media)
do
	locationAndFile='/mnt/'${a}'/'$windowsPart
	if [ -f $locationAndFile ]
	then
		echo "Found registry file at $locationAndFile"
		echo "*** How to use ***"
		echo "*** 1. Type in 1 followed by enter, to select 'Edit user data na passwords' ***"
		echo "*** 2. After that, press enter to edit auto selected user (written on the bottom), or type in number (RID) of the user you wish to edit. Example: 01f4 ***"
		echo "*** 3. After that, type in 1 to 'Clear (blank) user password' ***"	
		echo "*** 4. After that, type in q to 'Quit editing user, back to user select' ***"		
		echo "*** 5. After that, type in q to 'Quit (you will be asked if there is something to save)'. ***"	
		echo "*** 6. After that, type in y to 'Write files' ***"	
		$prog -i $locationAndFile
		echo "*** List of users, cleared password(s) should say *BLANK* in the Lock column. Reboot if all is ok. ***"
		$prog -l $locationAndFile
	fi
done
