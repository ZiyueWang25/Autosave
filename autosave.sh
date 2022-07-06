#!/bin/bash

AUTOSAVE_APP=$1
SLEEP_TIME=$2
while true
do
 ACTIVE_APP=$(xdotool getwindowfocus getwindowname);
 SCREEN_INFO=$(xset q);
 TIME=$(date +"%d-%m-%y %T");
 echo -n "${TIME} "
 if [[ $SCREEN_INFO == *"Monitor is On"* ]];
 then
  if [[ $ACTIVE_APP == *$AUTOSAVE_APP* ]];
  then 
   echo $ACTIVE_APP
   $(xdotool key ctrl+s);
   echo "Autosave successfully"
  else
   echo "Not ${AUTOSAVE_APP}, is ${ACTIVE_APP}"
  fi;
 else
  echo "Screen is blank"
 fi;
 sleep $SLEEP_TIME;
done
