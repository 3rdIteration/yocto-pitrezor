# yocto-pitrezor
OS linux platform for the pitrezor project (usign yocto)

This code is used to build the linux platform image for the raspberry pi zero and pi 4 to be able to run the pitrezor software at bootup.

## How to build pitrezor image?

1. [Install Docker](https://docs.docker.com/engine/installation/)
2. `git clone https://github.com/heneault/yocto-pitrezor.git`
3. `cd yocto-pitrezor`
4. `sudo ./build-pitrezor.sh TAG [raspberrypi4]` (where TAG is 1.10.3.0 for example, if left blank the script builds latest commit in master branch). You can optionnaly specify "raspberrypi4" to build an image for that platform. Otherwise default is pi zero.

This creates file `build/pitrezor-MACHINE-TAG.zip` .

