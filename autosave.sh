#!/bin/bash

AUTOSAVE_APP=$1
SLEEP_TIME=$2
while true
do
 ACTIVE_APP=$(xdotool getwindowfocus getwindowname);
 if [[ $ACTIVE_APP == *$AUTOSAVE_APP* ]];
 then 
  echo $ACTIVE_APP
  $(xdotool key ctrl+s);
  echo "Autosave successfully"
 else
  echo "Not ${AUTOSAVE_APP}"
 fi;
 sleep $SLEEP_TIME;
done
