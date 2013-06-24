#!/bin/bash

cd /Users/perrin/polartide/scripts
#cd /Users/rama/Documents/_code/polartide/scripts

./cron-stop-POLARTIDE.sh
sleep 10
echo "stopped POLARTIDE"
./cron-start-POLARTIDE.sh
sleep 10
echo " started POLARTIDE"