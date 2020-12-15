#!/bin/sh

if [ ! -d /sys/class/gpio/gpio150 ]; then
	echo 150 > /sys/class/gpio/export;
	echo 1 > /sys/class/gpio/gpio150/value
else
	echo 1 > /sys/class/gpio/gpio150/value
fi

echo enabled > /sys/class/tty/ttymxc0/power/wakeup
echo freeze > /sys/power/state

if [ ! -d /sys/class/gpio/gpio150 ]; then
	echo 150 > /sys/class/gpio/export;
	echo 0 > /sys/class/gpio/gpio150/value
else
	echo 0 > /sys/class/gpio/gpio150/value
fi
