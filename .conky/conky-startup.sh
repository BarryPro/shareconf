sleep 0s
killall conky
cd "/root/.conky"
conky -c "/root/.conky/conkyLeft" &
cd "/root/.conky"
conky -c "/root/.conky/conkyRight" &
