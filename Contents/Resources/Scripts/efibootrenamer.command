#!/bin/sh
#!/bin/bash
# simple Bash Menu Script by jackluke

printf '\e[96m;%s\a' "$color"
printf "$'\e[40m'Welcome to EFI Boot renamer for any EFI Mac by jackluke"
clear && printf '\e[3J'
echo "\n\nWelcome to EFI Boot renamer for any EFI Mac\n\nit allows to rename as default an EFI Boot volume at apple startup manager"
sudo mount -uw / ; killall Finder
sudo nvram boot-args="-no_compat_check amfi_get_out_of_my_way=1"
sudo diskutil mount /dev/disk0s1
cd /Volumes/EFI/EFI/Boot/
rm .disk_label*
echo "\nEFI boot renamed to its default value\nDone"
