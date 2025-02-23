 <h1 id="toc1">How to make portable versions of apps on windows</h1>
 <h2 id="toc2">Note:</h2>
<p>most of the downloaded installations (setup.exe) can be unpacked using 7-zip program. (7-zip.org)<br>After that find 'name of the program.exe', right click on it, select copy. In windows explorer right click on empty space, select 'paste shortcut'<br>Right click on created shortcut and select properties.</p>
<p>In the 'Target' field add for example ' -profile myprofile' without quotes. Mind the space before -profile. Dont use spaces in profile name. myprofile, not my profile.</p>
<p>Example, change target field lik this:</p>
<p>"d:\Downloads\Waterfox Setup G5.1.10\core\waterfox.exe", becomes this:<br>"d:\Downloads\Waterfox Setup G5.1.10\core\waterfox.exe" -profile test</p>
<p>Click on ok. Start new program by clicking on new shortcut, not by clicking on exe.<br>From time to time clean images from cache. Keep cookies if you want it to remember your username and passwords, so you don't have to retype it every time.</p>
 <h2 id="toc3">Progams:</h2>
 <h3 id="toc4">Firefox, Thunderbird, Seamonkey, Waterfox</h3>
<p>Add '-profile something' without quotes to shortcut to program.<br>-profile "profile_path"<br>Start with the profile with the given path. Firefox, Thunderbird and SeaMonkey2.x only.<br>"profile_path" can either be an absolute path ("/path/to/profile") or a relative path ("path/to/profile").<br>Note: On macOS, specifying a relative path is not supported anymore from Firefox 4.0 and up due to a regression; see bug 673955. </p>
<p>-private<br>Opens Firefox in permanent private browsing mode. Firefox 3.6 and later only.<br>May not be applicable in older Ubuntu for Firefox 20 and later, confirmed to work in 14.04. </p>
 <h3 id="toc5">Kodi:</h3>
<p>run it with -p parameter:<br>kodi.exe -p</p>
 <h3 id="toc6">QBittorent:</h3>
<p>Create 'profile' folder where program is unpacked.</p>
<p>Place the qBittorrent binaries (qbittorrent.exe and qbittorrent.pdb) anywhere you want in your PC. <br>You can extract them from the setup .exe file using 7-zip or similar (setup files are just fancy self-extracting archives).<br>Create a folder called 'profile' without quotes, in the same directory as the qbittorrent.exe and qbittorrent.pdb files.<br>Execute qbittorrent.exe. It will initialize the needed configuration files within the profile folder and use them during execution.<br>from: https://github.com/qbittorrent/qBittorrent/wiki/How-to-use-portable-mode</p>
 <h3 id="toc7">VLC:</h3>
<p>uncompress archive<br>create folder 'portable' in uncompressed folder<br>run vlc.<br>it  will use 'portable' folder for settings</p>
 <h3 id="toc8">Libre Office</h3>
<p>In the installation folder of LO, change content of file program\bootstrap.ini<br>from<br>UserInstallation=$SYSUSERCONFIG/LibreOffice/4<br>to<br>UserInstallation=$ORIGIN/../settings1</p>
<p>Create shortcut to program\soffice.exe if you wish.</p>
 <h3 id="toc9"><a href="https://github.com/clsid2/mpc-hc">MPC-HC by clsid2</a></h3>
<p>- to make it portable: view/options/player: store settings in ini file</p>
 <h3 id="toc10">Softmaker Free Office: https://www.freeoffice.com/en/</h3>
<p>either use usbstick.exe, or:</p>
<p>-copy the folder where you installed "SoftMaker FreeOffice" to USB flash drive (example: "g:\SoftMaker Office 2024")<br>-optional: copy files from "Documents/SoftMaker" to "SoftMaker Office 2024" folder on USB flash drive. (example: "g:\SoftMaker Office 2024\SoftMaker")<br>-create a file named portable.txt in the "SoftMaker Office 2024" folder (example "g:\SoftMaker Office 2024\portable.txt")<br>-This “marker file” causes SoftMaker Office not to install itself in the Windows Registry or the Start menu.</p>
<p>-you can move SoftMakerUpdaterTool.exe, syspin(64).exe, *.dwr (but keep *.iwr, and uk.dwr), *.rtf, *.pdf, *.nfo files to del folder (just create one)<br>-you can also move 'inst', 'spell' and 'tb' folders to del folder, although you might need them later.<br>-inst will be recreated.</p>
<p>-start textmaker or planmaker or presentations .exe<br>-click on cancel when asked for name.<br>-go to file/options/files, and set default file format to docx (or odt).</p>
<p>-to set a4 as default size, open textmaker, change page size to a4, and save as docx or tmv template (you can use any name you like, for example a4.dotx, or a4.tmv)<br>-move file to softmaker/templates.<br>-in textmaker, click on new, templates folder, click on your file, and select 'set as default' on the right.</p>
<p>from: https://www.softmaker.com/en/support/installation/windows and https://alternative2office.org/office-suite/how-to-install-and-run-softmaker-office-2024-applications-from-a-usb-flash-drive/</p></body>
