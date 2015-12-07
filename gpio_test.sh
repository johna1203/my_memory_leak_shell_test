#!/bin/sh
gpio_pin=$1

echo "${gpio_pin}" > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio$gpio_pin/direction
echo 1 > /sys/class/gpio/gpio$gpio_pin/value
sleep 5
echo 0 > /sys/class/gpio/gpio$gpio_pin/value
echo "${gpio_pin}" > /sys/class/gpio/unexport
