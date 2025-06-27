#!/bin/sh
export XDG_CURRENT_DESKTOP=sway
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
export INPUT_METHOD=fcitx
export SDL_IM_MODULE=fcitx

pgrep -x fcitx5 >/dev/null || fcitx5 &
