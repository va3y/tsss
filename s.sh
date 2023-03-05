#!/bin/bash


NC='\033[0m' # No Color
Red='\x1b[38;5;160m'
Orange='\x1b[38;5;214m'
Yellow='\x1b[38;5;226m'
Green='\x1b[38;5;46m'
Blue='\x1b[38;5;33m'
Purple='\x1b[38;5;165m'
colors=($Red $Orange $Yellow $Green $Blue $Purple)

clear

while true; do
WIDTH=$(tput cols)
HEIGHT=$(tput lines)


clear
tput cup 0 0 
tput civis

for line in $(seq $HEIGHT); do 
  printf "${colors[$line * ${#colors[@]} / $HEIGHT]}█%.0s" {1..$(seq $WIDTH)}
done
sleep 2

done

