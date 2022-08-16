#!/bin/bash

# L: Lenovo 2160p
xrandr --output DP-1-2 --auto 
# M: Iiyama 1080p
xrandr --output DP-1-3 --auto --right-of DP-1-2
# R: Iiyama 1080p
xrandr --output DP-1-1 --auto --right-of DP-1-3

