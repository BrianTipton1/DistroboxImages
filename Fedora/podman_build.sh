#!/bin/bash
cd $HOME/Developer/DistroboxImages/Fedora/
podman pull registry.opensuse.org/opensuse/distrobox:latest
podman image prune -a -f
podman build -t mybase . --no-cache
