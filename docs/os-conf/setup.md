# Base Operating System Configuration
#

# Specification
Base OS: Raspberry Pi OS with desktop
Release date: January 28th 2022
System: 64-bit
Kernel version: 5.10
Debian version: 11 (bullseye)
Architecture: arm64

# Reasoning for this choice
1. Stability:
    * Interfacing with devices attached to the raspberry pi requires less configuration when using the OS intended for the hardware. Operating systems such as Ubuntu may work, but require additional integration work for attaching things such as cameras and gpio devices.

2. Compatibility:
    * Libraries intended for the raspberry pi may run into unexpected   behavior when running on any other linux based OS. Choosing 64-BIT over 32-BIT eliminates the change that packages may not be supported as well.

* Note: Any dependency conflicts within this base os can be resolved through the use of docker containers for those specific services.


# Installing the OS
1. Download and open the official raspberry pi imager
2. Connect the SD Card to your PC
3. Choose 'Operating System' >> 'Raspberry Pi OS (other)' >> Raspberry Pi OS (64-bit)
4. Choose the USB Device associated with your SD Card
5. Click the Cog and adjust the initial settings of the pi
    * Be sure to change the default credentials
    * Do not connect to the internet yet
5. Click 'Write'
6. Eject the SD card from your PC
7. With it powered off, insert the SD card into the pi
8. Power on the pi and wait for it to boot up

You will now be at the login screen of the Raspberry pi, running the Base OS, Debian 11 (bullseye).

