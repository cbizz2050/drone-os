# Drone-OS Overview
# 

## About The Project
This project is is a platform for the software configuration of my raspberry pi drone computer. The intent behind this project is to provide a method of autonomos drone navigation, object scanning, and mapping.

# Software Configuration
The software configuration of Drone-OS includes 3 seperate executable services wrapped into individual docker containers (see below).

# Docker container layout:
1. NavigationManager
    - image: Ubuntu 20.04
    - Forked library: ardupilot/pymavlink
    - Source: /drone-os/navigation
        - input:
            - flight controller: Pixhawk 4 v2.4.8
                - gps: M8N
                - telemetry: 3DR 915 mhz over
        - output:
            - Automates navigation
            - Populates "environmental" metrics for ObjectScanner and map_surveyor

2. ObjectScanner
    - image: Ubuntu 20.04
    - Forked library: tianxiaomo/pytorch-volov4
    - source: /drone-os/object-scanner
        - input: 
            - camera: 
            - current positioning from NavigationManager
        - output: 
            - objectDetected: 
                - name
                - certanty
                - distanceFromDrone

3. MapSurveyor
    - image: todo
    - source: /drone-os/surveyor
        - input:
            - ObjectScanner: 
                - objects detected
                - certanty
                - distanceFromDrone


# Drone computer requirements
Base OS: Ubuntu 20.04
Memory: 50gb
RAM: 8gb
CPU: ARM64

## Start process
1. change directory to location with docker-compose.yaml
2. run 'docker-compose up'


