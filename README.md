## Description

Emulation of 3 servers:
  * salt master
  * puppet master
  * minion

Both the minion and the puppet master can be orchestrated via the salt master.

## Create a custom base image

First build your personal container from a cirb centos image -> "cirb/pra".
This is a generic base image for all other middleware images.
The process allows a rebuild outside the irisnet network.

