#!/bin/bash

# Get all texlive sub-packages and loop through each package
rpm -qa | grep texlive | while read package; do
    # List contents of the package
    rpm -ql $package | while read file; do
        # Check if the file is a binary in /usr/bin
        if [[ $file == /usr/bin/* ]]; then
            # Run distrobox-export on the binary
            distrobox-export --bin $file
        fi
    done
done
