#! /bin/bash
#

CPUTEST_PATH="C:/Program Files/Desktop/cpu-script.sh"
FILEIOTEST_PATH="C:/Program Files/Desktop/fileio-script.sh"
MEMORYTEST_PATH="C:/Program Files/Desktop/memory-script.sh"

sudo apt-get update
sudo apt-get install -y sysbench
chmod +x "C:/Program Files/Desktop/cpu-script.sh"
chmod +x "C:/Program Files/Desktop/fileio-script.sh"
chmod +x "C:/Program Files/Desktop/memory-script.sh"

"$CPUTEST_PATH"
"$FILEIOTEST_PATH"
"$MEMORYTEST_PATH"
