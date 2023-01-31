
![Alt text](https://github.com/bartektenDev/SSHRD-MakerApp-for-MacOS/blob/main/demoimg.png "SSHRD Maker 1.0 beta")

# SSHRD Maker App for MacOS
Made with love from @ios_euphoria and @dedbeddedbed
ver 1.0 beta

Tested MacOS BigSur, Monterey & Ventura
Tested iOS 13.1-16.3

#  use with caution!!! we are not responsible if you
#        don't know what you're doing!!!

#Installation
1. Unzip the files to a folder.
2. Drag and drop the SSHRD Maker.app file to your Applications folder
on your Mac
3. Open terminal and run this command to avoid any launching issues:
sudo xattr -r /Applications/SSHRD Maker.app
4. Enjoy!

#How to use?
1. Connect your iOS device in DFU mode
2. Select the ramdisk you'd like to build (perferably whatever iOS the device is running)
3. Boot the ramdisk 


#Issue?
Q: Device is leaving DFU mode everytime I try to build or boot!
A: Wipe the device and try again or use a different ramdisk. Could
also be the wrong iOS for the target device, bad usb cable, or
your computer has an issue.

Q: Do I need to jailbreak to use this?
A: No. This only exploits the device so you can ssh into it and
modify or pull files without actually jailbreaking it.

Q: It's not working for me!!!
A: Stop using the tool. You're clearly inexperienced and you shouldn't
be using this. Otherwise try to figure out why it's not building or 
booting yourself. We get thousands of questions, we can't help everyone.

If you have questions or are stuck you can ask me on twitter and I'll try my best. 
I'm usually flooded with tons of messages but you can give it a shot or check reddit!


Follow on twitter @ios_euphoria - This applications GUI developer
Follow on twitter @dedbeddedbed - This applications SSHRD script creator


SOMETHING NOT WORKING?

Try in terminal:

Command:
sudo xattr -rd com.apple.quarantine /Applications/SSHRD Maker.app

Command:
sudo xattr -d com.apple.quarantine /Applications/SSHRD Maker.app

Command: 
sudo xattr -r com.apple.quarantine /Applications/SSHRD Maker.app

ALSO try to run this Command:
chmod 755 /Applications/SSHRD Maker.app

I am not customer service. I made this for myself and released publicly for everyone else to enjoy.
THANKS TO ALL PEOPLE INVOLVED IN MAKING THE OTHER TOOLS TO MAKE THIS GUI POSSIBLE.

I love you @dedbeddedbed <3
⚡ @ios_euphoria ⚡
