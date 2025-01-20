# howto
Various HOWTOs

## How to change windows password from linux?
- Windows partition must not be locked by bitlocker disk encryption
- Download 'Porteus linux 64 bit Mate' from http://www.porteus.org. Example link download (size 470MB): https://ftp.nluug.nl/os/Linux/distr/porteus/x86_64/Porteus-v5.1/Porteus-MATE-v5.1-alpha-x86_64.iso
- Create bootable usb from downloaded iso, using rufus, or ventoy.
- Download [chntpw](https://github.com/dbojan/howto/raw/refs/heads/main/chntpw-140201.x86_64.xzm) (right click, 'save link as')
- Download [clear_windows_password.sh](https://github.com/dbojan/howto/raw/refs/heads/main/clear_windows_password.sh).
- Put these two files to 'porteus/modules' folder on usb. Create folders yourself.
- Boot pc, select 'boot from usb' using f9, or f2 or esc key while booting.
- Double click on 'Windows' partition to make it accessable from linux.
- Double click on chntpw_xx.xzm in 'porteus\modules' folder to install, if not installed automatically.
- To make 'clear_windows_password.sh' script executable (runable), type in terminal 'chmod u+x ./clear_windows_password.sh', or right click in file manager, and select in permissions 'allow executing as program'
- To run type ./clear_windows_password.sh in terminal or,
- Right click on program and select open with, other, enter xterm, or mate-terminal or terminal. press ok.
- Follow the instructions. Reboot windows when finished. Instructions are also written inside .sh script, you can read it with notepad.
- There is also interenet browser 'librewolf', you can add it to usb if you wish to 'porteus/modules' folder: https://sourceforge.net/projects/ikkiboot/files/porteus/extra/, more info here: https://forum.porteus.org/viewtopic.php?f=49&t=10461. chntpw is also downloaded from https://sourceforge.net/projects/ikkiboot/files/porteus/include/.

## How to change windows password from windows bootable usb.
- Downlod HBCD_PE_x64_v101.iso (1GB) from https://archive.hirensbootcd.org/pe-versions/, link example https://archive.hirensbootcd.org/pe-versions/HBCD_PE_x64_v101.iso
- Create bootable usb from downloaded iso, using rufus, or ventoy.
- Boot pc, select 'boot from usb' using f9, or f2 or esc key while booting.
- Click on 'start' menu, security and find password remover, select user, clear password.

## How can I copy files between 2 ftp / webdav sites?
- Open both sites in winscp program, use copy and paste
- Or use 'map network drive' or 'add a network location', or create shortcut: explorer.exe ftp://...

