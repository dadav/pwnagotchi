#!/bin/bash

for i in `seq 1 $1`;
do
	echo 0 >/sys/class/leds/led0/brightness
	sleep 0.3
	echo 1 >/sys/class/leds/led0/brightness
	sleep 0.3
done

# 1 = led is off; safe the juice!!
echo 1 >/sys/class/leds/led0/brightness
sleep 0.3
