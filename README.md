# howto
Various HOWTOs

## How to change windows password from linux?
 - This is a script to make clearing windows passwords from linux easier.
 - Requires Porteus os, chntpw application and clear_windows_password.sh. Windows partition must not be locked by bitlocker encryption.
 - You can find mirror of all needed files here: https://mega.nz/folder/0GlnXBoI#Mhnuxlvb5zon7F_dqIyXnw
 - (Original sources: [Porteus](http://www.porteus.org) linux, [iso file 470MB](https://ftp.nluug.nl/os/Linux/distr/porteus/x86_64/Porteus-v5.1/Porteus-LXDE-v5.1-alpha-x86_64.iso), [chntpw-140201.x86_64.xzm](https://sourceforge.net/projects/ikkiboot/files/porteus/include/chntpw-140201.x86_64.xzm), [clear_windows_password.sh](https://raw.githubusercontent.com/dbojan/howto/refs/heads/main/clear_windows_password.sh))

### Preparing usb
 - If you use ventoy, copy 3 files to usb.
 - If you get black screen, use "grub 2" boot option
 - If you use rufus, create bootable iso from Porteus iso, and copy additional files to usb.
 - (If you copy files to porteus\modules folder, they should load automatically)
 - root password is **toor**, guest password is guest.
  
### How to use, after booting pc from usb:

 - To open file manager: click on white icon (File Manager) in top left corner
 - (Windows partition should be auto-mounted. If not: click on 'Windows' icon on the left panel of file manager, to see windows files.)
 - To install chntpw app: click on usb drive in left part of file manager, then on chntpw_xx.xzm, in the left panel of the file manager,
 - Enter root password: toor
 - To run the script: double click on 'change_windows_password.sh' and select 'Execute In Terminal'
 - (If you wish to read 'change_windows_password.sh' in text editor, double click on it, and select 'Open'.)

 -  You will be presented with the list of windows users. We will clear admin users' password, and write changes to disk.
 -  What to do after running the script (make sure Numlock is on):

 -  1. Press 1 followed by enter - to select 'Edit user data na passwords'
 -  2. Press enter to edit auto selected 'admin' user (whose number is written at the bottom). Or type in number (RID) of the user you wish to edit. Example: 01f4
 -  3. Press 1 - to 'Clear (blank) user password'
 -  4. Press q - to 'Quit editing user, back to user select'
 -  5. Press q - to 'Quit (you will be asked if there is something to save)'
 -  6. Press y - to 'Write files'
 -  List of users will be displayed, cleared password(s) should say *BLANK* in the 'Lock' column. Reboot if all is ok (Logout).

 -  (There is also a version with [Slitaz](https://slitaz.org) linux, [98MB files here](https://mega.nz/folder/oDERiDqB#Xhrn_bty20oiMEOzLEVZYw). root password is root.  
-Select us/en keyboard/language. Click on windows partition in the file manager to mount it.  
-Double click to install chntpw package, right click on 'clear_windows_password.sh' and select open with 'system apps\xterm'.)

## How to change windows password from windows bootable usb.
- Downlod older version of [Hiren's boot cd](https://www.hirensbootcd.org/) (cause it is smaller): [HBCD_PE_x64_v101.iso (1GB)](https://archive.hirensbootcd.org/pe-versions/HBCD_PE_x64_v101.iso)
- Create bootable usb from downloaded iso, using rufus, or ventoy.
- Boot pc, select 'boot from usb' using f9, or f2 or esc key while booting.
- Click on 'start' menu, security and find password remover, select user, clear password.

## How can I copy files between 2 ftp / webdav sites?
- Open both sites in winscp program, use copy and paste
- Or use 'map network drive' or 'add a network location', or create shortcut: explorer.exe ftp://...

## How to make windows 11 more like windows 10

- Download and run [this file](https://raw.githubusercontent.com/dbojan/howto/refs/heads/main/11_to_10.bat), (right click, save file as). You don't have to be an administrator. 
- What it does: move start menu to left, disable: top layout, new context menu; uninstall: new notepad, news ... For a complete list of changes open the file in notepad.
- 2024-12-28-1.

## Slitaz uefi
- [slitaz-current-core64.iso](https://mirror1.slitaz.org/iso/current/slitaz-current-core64.iso)

## How to make portable versions of windows programs
- https://github.com/dbojan/howto/blob/main/portable.md

## How to create fillable pdf forms for free:

-Use Libre office.
-Start Libre office Draw
-View/Toolbars/Form Controls

-Click on 'Design Mode', looks like a triangle.
-If 'Form control wizard' is on, turn it off
-You can add regular text, text box, check box, radio button ...
-Select export to pdf, enable 'pdf form' option.
-You can edit 'Tab Order' by right click and select 'Control Options'





