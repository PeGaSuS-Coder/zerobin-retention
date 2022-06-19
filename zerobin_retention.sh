#!/bin/bash

##########
# Configuration
##########

# Pastes folder, without trailing slash
theFolder="$HOME/.local/share/0bin/pastes"

# How many days to keep the files?
theDays=7

###############
# DON'T TOUCH ANYTHING BELOW UNLESS YOU KNOW WHAT YOU ARE DOING
###############
# If you touch the code below and then complain the script "suddenly stopped working" I'll touch you at night.
###############

# Clean up of files
find "$theFolder"/* -type f -mtime "$theDays" -delete

# Clean up of empty folders
find "$theFolder"/* -type d -empty -delete
