
#!/bin/bash
sleep 10s
firefox-esr http://loxcom:mocxol@ene02-cam01.lextend.ch:20011/control/faststream.jpg?stream=full&FPS=2 &
sleep 10s
xdotool key F11 # hit full screen
sleep 10s
firefox-esr http://loxcom:mocxol@ene02-cam02.lextend.ch:20012/control/faststream.jpg?stream=full&fps=2 &
sleep 10s
xdotool key F11 # hit full screen
sleep 10s
firefox-esr /home/pi/Documents/monitoring/index-left.html
sleep 10s
xdotool key F11 # hit full screen

