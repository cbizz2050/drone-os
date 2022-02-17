# Navigation Manager Overview
#

# General Description
This folder contains the necessary files used for running a docker container that hosts the software for autonomous navigation.

# Running the container manually
    1. `cd navigation-manager'
    2. `docker-compose up'
    3. 'docker exec -it --privileged navigation-manager-container /bin/bash'

# Navigation Manager Capabilities
UAV Navigation Manager is a docker container that uses the python-dronekit library to interface with the flight controller over MAVLink in order to command and control the drone without direct user input.