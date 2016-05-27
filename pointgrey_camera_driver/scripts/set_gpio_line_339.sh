#!/bin/bash

# See http://stackoverflow.com/questions/19257624/interrupt-handling-and-user-space-notification/19258745#19258745

# Get the GPIO pin
echo 339 > /sys/class/gpio/export

# Set it to an input
echo in > /sys/class/gpio/gpio339/direction

# Set an interrupt to occur on a rising edge
echo rising > /sys/class/gpio/gpio339/edge