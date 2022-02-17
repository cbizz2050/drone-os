# Drone-OS Overview
# 

## About The Project
This project is platform for autonomous drone development. 
Inside of this repository, you will find the following;

    Documentation
    1. Hardware Configuration
        - Parts list
        - Wiring diagrams
    2. OS Configuration
    3. Kernel configuration
        - Package dependency installation instructions
        - systemd service configuration
    4. Software installation
        - Navigation Manager installation instructions
     

# Software Configuration
The software configuration of Drone-OS includes 3 seperate executable services wrapped into individual docker containers (see below).

# Docker container layout:
1. Navigation Manager
    - image: Ubuntu 20.04
    - Forked library: ardupilot/pymavlink
    - Source: /drone-os/navigation
        - input:
            - Flight Controller:
                - Model: Pixhawk PX4 v2.4.8
                - Hardware device file: /dev/ttyAMA0
            - Camera:
                - Model: Luxonis OAK-D
                - Hardware device file: /dev/video0

## Start process
1. change directory to location with docker-compose.yaml
2. run 'docker-compose up'


