#!/bin/bash
musage=$(free | awk '/Mem/{printf("RAM Usage: %.2f%\n"), $3/$2*100}' |  awk '{print $3}' | cut -d"." -f1)
if [ $musage -ge 60 ]; then
echo "Current Memory Usage: $musage%" | mail -s "Memory Usage on $(hostname) at $(date)" example@gmail.com
else
echo "Memory usage is in under threshold"
fi
