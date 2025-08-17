#!/bin/bash

# Reset terminal colors and settings on exit
cleanup() {
  clear
  tput sgr0  # reset colors
}
trap cleanup EXIT

# Check if dialog is installed
if ! command -v dialog &>/dev/null; then
  echo "Please install dialog first. On Debian/Ubuntu: sudo apt install dialog"
  exit 1
fi

tput cup 5 10    # Move cursor to row 5, column 10
echo -e "\e[1;32mHello from Bash!\e[0m" 

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="My Setup Script"
TITLE="Setup Menu"
MENU="Choose an option:"

OPTIONS=(
  1 "Create folders"
  2 "Install packages"
  3 "Exit"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

# The cleanup trap will run here and reset terminal

case $CHOICE in
  1)
    echo "Creating folders..."
    # your folder creation logic here
    ;;
  2)
    echo "Installing packages..."
    # your package install logic here
    ;;
  3)
    echo "Exiting..."
    exit 0
    ;;
  *)
    echo "Invalid option."
    ;;
esac
