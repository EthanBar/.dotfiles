#!/bin/bash
~/.fehbg &

polybar-msg cmd quit

polybar example 2>&1 | tee -a /tmp/polybar.log & disown

xbindkeys
