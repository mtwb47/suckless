# Matt's DWM Install

This dwm install is based on the Material Ocean theme. 

## Dependencies
* git (to download this repo)
* make (base devel in Arch)

#Installation
1. Clone this repository into your .config file.
2. cd into the suckless folder.
3. Move the .dwm file.
    mv .dwm ~/
4. cd back into 
    cd .config/suckless
5. Now it's time to make dwm, st, and dmenu
  cd dwm (From the suckless folder)
  make && sudo make install
  cd ../slstatus
  make && sudo make install
  cd ../dmenu
  make && sudo make install
  cd ../st
  make && sudo make install
  cd

6. Then you'll need to add dwm to your Display Manager if you use one.
    cd /usr/share/xsessions 
    sudo touch dwm.desktop
    sudo chown $USER dwm.desktop
    vim dwm.desktop
    
    (Copy the lines below this one)
    
    [Desktop Entry]
    Encoding=UTF-8
    Name=Dwm
    Comment=the dynamic window manager
    Exec=dwm
    Icon=dwm
    Type=XSession 

Then hit save

7. You'll need to download my scripts repo in order to get slstatus to work. There are many scripts there and icons that you'll need.

8. Log out and then change into DWM.


