#!/bin/bash

xinput set-prop 13 315 1
xinput set-prop 13 323 1

sudo pacman -Syu
yay -Syu --noconfirm
