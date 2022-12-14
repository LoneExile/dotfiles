#! /bin/sh

chosen=$(printf "π  Clipboard\nπ‘  Networks\nπ  Run\nβΎοΈ  Calculator\nπ  Emoji\nπ€  Power Menu" | rofi -dmenu -i -theme-str '@import "~/.config/rofi/utility/power.rasi"' )

case "$chosen" in
	"π€  Power Menu") ~/.config/rofi/utility/powermenu/powermenu.sh ;;
	"π  Run") rofi -show run ;;
	"βΎοΈ  Calculator") rofi -show calc -modi calc -no-show-match -no-sort ;;
	"π  Emoji") rofi -modi emoji -show emoji -emoji-format '{emoji} {name} / {keywords}' ;; # -emoji-mode copy
	"π‘  Networks") networkmanager_dmenu ;;
  "π  Clipboard") rofi -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}' ;;
	*) exit 1 ;;
esac

# rofi -show keys -i -theme-str '@import "~/.config/rofi/utility/run.rasi"'
