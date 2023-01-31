#!/usr/bin/env bash

#set -e

#change script activated working directory to current directory
cd "$(dirname "$0")"


#deviceUDID = null
#outputConsole = null

#echo 'Finding device...'
#$RunCommand = "./irecovery -q"
#echo $($RunCommand | grep "$2: " | sed "s/$2: //")

#EXAMPLE FROM irecovery output

#MODE: DFU
#PRODUCT: iPad7,5
#MODEL: j71bap
#NAME: iPad (6th gen, WiFi)




#WRITE DATA TO FILE FUNCTION TO HELP XCODE KNOW WHAT DEVICE IS CONNECTED IN RECOVERY MODE
#./irecovery -q > outputConsole.txt




#READ DATA FROM FILE FUNCTION TO DISPLAY OUTPUT PASS TO XCODE

#old style
##iPad2,4
#grabbedTYPEinfo=$(grep 'PRODUCT: ' outputConsole.txt)
#firstString=$grabbedTYPEinfo
#secondString=""
#outputText1="${firstString/PRODUCT: /"$secondString"}"
#
##iPad
##grabbedNAMEinfo=$(grep 'NAME: ' outputConsole.txt)
##firstString2=$grabbedNAMEinfo
##secondString2=""
##echo ${firstString2/NAME: /"$secondString2"}
#
##Mode: DFU
#grabbedMODEinfo=$(grep 'MODE: ' outputConsole.txt)
##firstString3=$grabbedMODEinfo
##secondString3=""
##deviceMODEString = echo ${firstString3/PRODUCT: /"$secondString3"}


#NEW style
device_mode="$(irecovery -q 2>/dev/null | grep -w "MODE" | cut -c 7-)"
#prints DFU or blank
#echo $device_mode
ProdCut=7 # cut 7 for ipod/ipad
device_type=$(irecovery -qv 2>&1 | grep "Connected to iP" | cut -c 14-)
if [[ $(echo "$device_type" | cut -c 3) == 'h' ]]; then
    ProdCut=9 # cut 9 for iphone
fi
device_ecid=$((16#$($irecovery -q | grep "ECID" | cut -c 9-)))
device_vers="Unknown"


echo "* Device: $device_type (${device_model}ap) in $device_mode mode"
echo "* iOS Version: $device_vers"
echo "* ECID: $device_ecid"
echo

#if [[ $grabbedMODEinfo =~ "DFU" ]]; then
#    echo $outputText1' connected in DFU mode.'
#    echo 'Device: OK!'
#else
#    echo 'no luck :('
#    echo $grabbedMODEinfo
#fi

exit
