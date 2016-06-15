#!/bin/bash

# Find our desired disk

USBDISK='/dev/disk2'
DRIVENAME='JumpNJackFlash'
USBPARTITION='/dev/disk2s2'
PASSWORDTOUNLOCK='P@55w0rd'

## Erase the Drive, Format it with GUID partition scheme, and HFS+ as filesystem type
# diskutil partitionDisk disk2 GPT HFS+ Elephant
disktuil unmountDisk force $USBDISK
diskutil partitionDisk $USBDISK GPT JHFS+ $DRIVENAME R
diskutil coreStorage convert $USBPARTITION -passphrase $PASSWORDTOUNLOCK
tput bel
tput bel
tput bel
diskutil eject $USBDISK