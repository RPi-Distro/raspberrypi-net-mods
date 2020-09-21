#!/bin/sh
if [ -f "/boot/wpa_supplicant.conf" ]; then 
  /bin/mv /boot/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
  if [ -f "/boot/wpa_supplicant.conf.txt" ]; then 
    /bin/rm /boot/wpa_supplicant.conf.txt
  fi
elif [ -f "/boot/wpa_supplicant.conf.txt" ]; then 
  /bin/mv /boot/wpa_supplicant.conf.txt /etc/wpa_supplicant/wpa_supplicant.conf
fi
dos2unix -7 /etc/wpa_supplicant.conf
