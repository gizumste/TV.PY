sudo apt-get update
sudo apt-get install firefox-esr



sudo apt-get install cmake cmake-qt-gui

samba Download
git clone https://github.com/Pulse-Eight/platform.git
mkdir platform/build
cd platform/build
cmake ..
make
make install
cd ../..
git clone https://github.com/Pulse-Eight/libcec.git
mkdir libcec/build
cd libcec/build
cmake -DRPI_INCLUDE_DIR=/opt/vc/include -DRPI_LIB_DIR=/opt/vc/lib ..
make -j4
make install
ldconfig
cd ../..

#sed -i "s|cam 1|IP cam 1|g" cam.html
#sed -i "s|cam 2|IP cam 2|g" cam.html
#sed -i "s|prtg adress|prtg adress|g" index-left.html
#sed -i "s|prtg adress|prtg adress|g" index-right.html
#sed -i "s|IP Raspberry PI|IP Raspberry|g" tv.py


mkdir /home/pi/hdmi-control
# move tv.py to /home/pi/hdmi-control
mv tv.py /home/pi/hdmi-control
# add autostart command to /etc/rc.local
sed -i '19i(/bin/sleep 15 & python /home/pi/hdmi-control/tv.py)' /etc/rc.local
# move autostart to /home/pi.comfig/lxsession/LXDE-pi
mv autostart /home/pi/.config/lxsession/LXDE-pi
# move monitoring.sh to /ezc/init.d
mv monitoring.sh /etc/init.d
mkdir /home/pi/Documents/monitoring
# move index-left.html to /home/pi/Documents
mv index-left.html /home/pi/Documents/monitoring
#move index-right.html to /home/pi/Documents
mv index-right.html /home/pi/Documents/monitoring
#move cam.html to /home/pi/Documents
mv cam.html /home/pi/Documents/monitoring

#restart Raspberry
