#!/bin/bash

disp_lenovo="DP-1-2"
disp_iiyama_left="DP-1-3"
disp_iiyama_right="DP-1-1"

# L: Lenovo 2160p
xrandr --output ${disp_lenovo} --auto 
# M: Iiyama 1080p
xrandr --output ${disp_iiyama_left} --auto --right-of ${disp_lenovo}
# R: Iiyama 1080p
xrandr --output ${disp_iiyama_right} --auto --right-of ${disp_iiyama_left}

