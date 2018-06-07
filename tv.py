### BEGIN INIT INFO
# Provides:          scriptname
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO

#! /usr/bin/python

import time
import os
import socket

UDP_IP = ("172.24.1.61")
UDP_PORT = 6060

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))

try:
        while True:
                data, addr = sock.recvfrom(256)

                if data == b"TV on":
                        print ("command received:", data)
                        os.system('echo "on 0" | sudo cec-client -s -d 1')
                        os.system('echo "as" | cec-client -s')

                elif data == b"TV off":
                        print ("command received:", data)
                        os.system('echo "standby 0" | sudo cec-client -s -d 1')

                else:
                        print ("retipe command")



time.sleep(1)

except ValueError:
        print ('error!'

