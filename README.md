# howto
Various HOWTOs

## How to change windows password from linux?
- Windows partition must not be locked by bitlocker disk encryption
- Download 'Porteus linux 64 bit Mate' from http://www.porteus.org. Example link download (size 470MB): https://ftp.nluug.nl/os/Linux/distr/porteus/x86_64/Porteus-v5.1/Porteus-MATE-v5.1-alpha-x86_64.iso
- Create bootable usb from downloaded iso, using rufus, or ventoy.
- Download [chntpw](https://github.com/dbojan/howto/raw/refs/heads/main/chntpw-140201.x86_64.xzm) (right click, 'save link as')
- Download [clear_windows_password.sh](https://github.com/dbojan/howto/raw/refs/heads/main/clear_windows_password.sh).
- Put these two files to 'porteus/modules' folder on usb. Create folders yourself.
- Boot pc from usb, double click on chntpw_xx.xzm to install if not installed automatically.
- to make 'clear_windows_password.sh' script executable (runable), type in terminal 'chmod u+x ./clear_windows_password.sh', or right click in file manager, and select in permissions 'allow executing as program'
- to run type ./clear_windows_password.sh in terminal or,
- right click on program and select open with, other, enter xterm, or mate-terminal or terminal. press ok.
- follow the instructions. Reboot windows when finished. Instructions are also written inside .sh script, you can read it with notepad.
- there is also interenet browser 'librewolf', you can add it to usb if you wish to 'porteus/modules' folder: https://sourceforge.net/projects/ikkiboot/files/porteus/extra/, more info here: https://forum.porteus.org/viewtopic.php?f=49&t=10461. chntpw is also downloaded from https://sourceforge.net/projects/ikkiboot/files/porteus/include/.

## How to change windows password from windows bootable usb.
- downlod HBCD_PE_x64_v101.iso (1GB) from https://archive.hirensbootcd.org/pe-versions/, link example https://archive.hirensbootcd.org/pe-versions/HBCD_PE_x64_v101.iso
- Create bootable usb from downloaded iso, using rufus, or ventoy.
- click on 'start' menu, security and find password remover, select user, clear password.

