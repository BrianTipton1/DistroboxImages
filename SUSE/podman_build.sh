#!/bin/bash
cd $HOME/Developer/Distrobox/SUSE
podman pull registry.opensuse.org/opensuse/distrobox:latest
podman image prune -a -f
podman build -t mybase . --no-cache
