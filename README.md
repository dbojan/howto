# howto
Various HOWTOs

## How to change windows password from linux?
- Windows partition must not be locked by bitlocker disk encryption
- Download 'Porteus linux 64 bit Mate' from http://www.porteus.org. Example link download (size 470MB): https://ftp.nluug.nl/os/Linux/distr/porteus/x86_64/Porteus-v5.1/Porteus-MATE-v5.1-alpha-x86_64.iso
- Create bootable usb from downloaded iso, using rufus, or ventoy.
- Download chntpw (right click, 'save file as')
- Download clear_windows_password.sh. Put these to files to porteus/modules folder on usb. Create folders yourself.
- Boot pc from usb, double click on chntpw_xx.xzm to install if not installed automatically.
- to make 'clear_windows_password.sh' script executable (runable), type in terminal 'chmod u+x ./clear_windows_password.sh', or right click in file manager, and select in permissions 'allow executing as program'
- to run type ./clear_windows_password.sh in terminal or,
- right click on program and select open with, other, enter xterm, or mate-terminal or terminal. press ok.
- follow the instructions. Reboot windows when finished.
