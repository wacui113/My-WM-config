#!/bin/bash

IM_ID=$(fcitx5-remote -n)

# Match to display symbol
case "$IM_ID" in
   *rime*)	echo "粵" ;;
   *bamboo*)	echo "VN" ;;
   *keyboard-us*) echo "EN" ;;
   *)	echo "?" ;;
esac

