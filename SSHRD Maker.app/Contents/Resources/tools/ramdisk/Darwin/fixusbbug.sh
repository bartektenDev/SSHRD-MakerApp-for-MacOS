#!/usr/bin/env bash
#restart usb weird connection bugs and disconnects

echo ""
echo "Restart USB connection to fix random connection on/off bug...."
killall -STOP -c usbd
echo "Killed USB connection. Restarting..."
echo "Done."
echo ""
exit 1

