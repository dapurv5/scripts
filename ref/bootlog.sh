#!/bin/bash
sudo gzip -d /var/log/messages.*
clear
#n=sudo find /var/log -name "messages.?.gz" -type f -print | wc -l
#if [$n = 0];then
#	echo "df"
#	sudo gzip -d /var/log/messages.*
#fi
echo "\nThe following is the boot record of the computer from the recent past.\n"
for i in $( find /var/log/messages.* | sort -r); do
	grep kmsg $i | cut -c 1-15
done
sudo fgrep -i kmsg /var/log/messages |cut -c 1-15 | uniq |sort -M
echo "\n"
sudo fgrep -i kmsg /var/log/messages* |cut -c 21-35 | uniq |sort| wc -l
echo "times\n"
