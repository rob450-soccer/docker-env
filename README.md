# Docker Env

This is a docker environment for running the sim. It has been tested running on MAC m1 and on Windows WSL

## Setup
start by cloning the relevant repos from github into this dir

- obstacles
- passing
- RCSSServerMJ

then run the following commands:

- `docker compose pull`
- `docker compose build`

## Starting The Environment

To run the code use `docker compose up` to start the environment

once inside the docker env go through the normal process of building the hatch envs 

## Getting Display working
### VNC

the dockerfile has a vnc already installed you can activate it by running `vncpasswd` then `
vncserver :1 -geometry 1280x800 -depth 24 -SecurityTypes VncAuth -localhost no`

this will route all GUIs to the VNC which can then be viewed with an app like VNC viewer.

### X11
I have been able to get x11 forwarding working on windows but not on Mac. More documentation to be added.
