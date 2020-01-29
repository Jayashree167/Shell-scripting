#/bin/bash
echo "Please choose what operation you need to perform?"
echo "1. Check current disk space usage"
echo "2. Check RAM usage"
read cmd
case $cmd in
   1)
       echo "***Current disk space usage is as follows***"
       df -h;;
   2)
       echo "***RAM usage is as follows***"
       free;;
   *)
       echo "Invalid Option"!!!;;
esac
