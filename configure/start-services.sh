#!/bin/bash

# verify services are enabled and started, otherwise - do that

# Verify network state
#  - dnsmasq
#  - hostapd
#  - ifconfig up/down

# Verify connectivity to pixhawk (optional)
# - check for device named /dev/ttyAMA0


# Verify docker containers are up and running
# - navigation manager
# - Object detection container